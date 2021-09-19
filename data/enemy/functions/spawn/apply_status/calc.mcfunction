###########################################################################
# モブの基本情報とレベルから、ステータスを計算する。
###########################################################################

### 共通NBT
data modify entity @s AbsorptionAmount set value 1000000f
data modify entity @s DeathTime set value 19s

### 属性値
execute store result score @s ElementFire run data get storage tusb_mob: "遅延ステータス"."炎属性値"
execute store result score @s ElementIce run data get storage tusb_mob: "遅延ステータス"."氷属性値"
execute store result score @s ElementLightning run data get storage tusb_mob: "遅延ステータス"."雷属性値"
execute store result score @s ElementLight run data get storage tusb_mob: "遅延ステータス"."光属性値"
execute store result score @s ElementDark run data get storage tusb_mob: "遅延ステータス"."闇属性値"

### 成長ステータス

### 合計値の計算
# 基礎値
scoreboard players reset _ BaseTotal
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント"
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント"
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント"
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント"
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント"
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント"
scoreboard players operation _ BaseTotal += _ _
# 成長値
scoreboard players reset _ GrowTotal
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _

### 最大HPを計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "遅延ステータス"."最大HP"
execute store result score @s HP store result score @s HPMax run function enemy:spawn/apply_status/apply_level
### 最大MPを計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "遅延ステータス"."最大MP"
execute store result score @s MP store result score @s MPMax run function enemy:spawn/apply_status/apply_level
### 物理攻撃力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "遅延ステータス"."物理攻撃力"
execute store result score @s Attack run function enemy:spawn/apply_status/apply_level
### 物理防御力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "遅延ステータス"."物理防御力"
execute store result score @s Defense run function enemy:spawn/apply_status/apply_level
### 魔法攻撃力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "遅延ステータス"."魔法攻撃力"
execute store result score @s SpecialAttack run function enemy:spawn/apply_status/apply_level
### 魔法防御力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "遅延ステータス"."魔法防御力"
execute store result score @s SpecialDefense run function enemy:spawn/apply_status/apply_level
