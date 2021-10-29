###########################################################################
# モブの基本情報とレベルから、ステータスを計算する。
###########################################################################

### レベルを表示
execute if entity @s[tag=!HideLevel] in area:control_area run loot replace block 2 2 2 container.0 loot enemy:name_with_level
execute if data entity @s[tag=!HideLevel] CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[0]
execute unless data entity @s[tag=!HideLevel] CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[1]

### 共通NBT
data modify entity @s AbsorptionAmount set value 1000000f
data modify entity @s DeathTime set value 19s

### 属性値
execute store result score @s ElementFire run data get storage tusb_mob: "遅延ステータス"."炎属性値"
execute store result score @s ElementIce run data get storage tusb_mob: "遅延ステータス"."氷属性値"
execute store result score @s ElementLightning run data get storage tusb_mob: "遅延ステータス"."雷属性値"
execute store result score @s ElementLight run data get storage tusb_mob: "遅延ステータス"."光属性値"
execute store result score @s ElementDark run data get storage tusb_mob: "遅延ステータス"."闇属性値"

### ステータス
scoreboard players set _ _ 100
### 最大HPを計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."最大HP" 4
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
scoreboard players operation _ Calc += @s Level
execute store result score @s HP store result score @s HPMax run scoreboard players add _ Calc 10
### 最大MPを計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."最大MP" 4
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
scoreboard players operation _ Calc += @s Level
execute store result score @s MP store result score @s MPMax run scoreboard players add _ Calc 10
### 物理攻撃力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."物理攻撃力" 0.5
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s Attack run scoreboard players add _ Calc 2
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @s Attack
### 物理防御力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."物理防御力" 1
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s Defense run scoreboard players add _ Calc 5
### 魔法攻撃力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."魔法攻撃力" 0.5
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s SpecialAttack run scoreboard players add _ Calc 2
### 魔法防御力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."魔法防御力" 1
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s SpecialDefense run scoreboard players add _ Calc 5
