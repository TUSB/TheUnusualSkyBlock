###########################################################################
# モブの基本情報とレベルから、ステータスを計算する。
###########################################################################

### レベルを表示 元のCustomNameをohmydatに保存しておく
data modify storage tusb_mob: "遅延ステータス"."ステータス".CustomName set from entity @s CustomName
execute if entity @s[tag=!HideLevel] in area:control_area run loot replace block 2 2 2 container.0 loot enemy:name_with_level
execute if data entity @s[tag=!HideLevel] CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[0]
execute unless data entity @s[tag=!HideLevel] CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[1]

### 共通NBT
data modify entity @s AbsorptionAmount set value 1000000f
data modify entity @s DeathTime set value 19s

### 属性値
execute store result score @s ElementFire run data get storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値"
execute store result score @s ElementIce run data get storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値"
execute store result score @s ElementLightning run data get storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値"
execute store result score @s ElementLight run data get storage tusb_mob: "遅延ステータス"."ステータス"."光属性値"
execute store result score @s ElementDark run data get storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値"

### ステータス
function enemy:spawn/apply_status/status/hp
function enemy:spawn/apply_status/status/mp
function enemy:spawn/apply_status/status/defense
function enemy:spawn/apply_status/status/special_defense

scoreboard players operation @s HP = @s HPMax
scoreboard players operation @s MP = @s MPMax
