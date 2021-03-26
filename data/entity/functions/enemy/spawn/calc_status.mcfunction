###########################################################################
# モブの基本情報とレベルから、ステータスを計算する。
###########################################################################

### 成長ステータス
### レベル
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."レベル" int 1 run scoreboard players get _ Level

### 合計値の計算
# 基礎値(20レベル分の価値)
scoreboard players reset _ BaseTotal
execute store result score _ _ run data get storage tusb_mob: "最大HP"."基礎ポイント" 20
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "最大MP"."基礎ポイント" 20
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "物理攻撃力"."基礎ポイント" 20
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "物理防御力"."基礎ポイント" 20
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "魔法攻撃力"."基礎ポイント" 20
scoreboard players operation _ BaseTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "魔法防御力"."基礎ポイント" 20
scoreboard players operation _ BaseTotal += _ _
# 成長値
scoreboard players reset _ GrowTotal
execute store result score _ _ run data get storage tusb_mob: "最大HP"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "最大MP"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "物理攻撃力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "物理防御力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "魔法攻撃力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _
execute store result score _ _ run data get storage tusb_mob: "魔法防御力"."成長ポイント"
scoreboard players operation _ GrowTotal += _ _

### 最大HPを計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "最大HP"
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."最大HP" int 1 run function entity:enemy/spawn/apply_level
### 最大MPを計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "最大MP"
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."最大MP" int 1 run function entity:enemy/spawn/apply_level
### 物理攻撃力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "物理攻撃力"
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."物理攻撃力" int 1 run function entity:enemy/spawn/apply_level
### 物理防御力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "物理防御力"
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."物理防御力" int 1 run function entity:enemy/spawn/apply_level
### 魔法攻撃力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "魔法攻撃力"
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."魔法攻撃力" int 1 run function entity:enemy/spawn/apply_level
### 魔法防御力を計算する
data modify storage tusb_mob: _ set from storage tusb_mob: "魔法防御力"
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."魔法防御力" int 1 run function entity:enemy/spawn/apply_level
