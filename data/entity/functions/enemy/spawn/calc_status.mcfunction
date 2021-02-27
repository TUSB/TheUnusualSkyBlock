### スポナーカートのOh My Datを取得
# OhMyDatIDはAttributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[0].UUID[0]に保存
function oh_my_dat:please
data modify storage tusb_mob: SpawnData set value {Attributes:[{Name:"minecraft:generic.movement_speed",Modifiers:[{Amount:0d,Operation:0,UUID:[I;0,0,0,0]}]},{Name:"minecraft:generic.knockback_resistance"},{Name:"minecraft:generic.attack_knockback"}]}
execute store result storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[0].UUID[0] int 1 run scoreboard players get @s OhMyDatID
### 固有ステータス
data modify storage tusb_mob: SpawnData merge from storage tusb_mob: "固有ステータス"."ベース"
data modify storage tusb_mob: SpawnData merge from storage tusb_mob: "固有ステータス"."見た目"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.follow_range"}].Base set from storage tusb_mob: "固有ステータス"."最大感知範囲"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage tusb_mob: "固有ステータス"."基本移動力"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set from storage tusb_mob: "固有ステータス"."ノックバック耐性"
data modify storage tusb_mob: SpawnData.Attributes[{Name:"minecraft:generic.attack_knockback"}].Base set from storage tusb_mob: "固有ステータス"."ノックバック力"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."炎属性値" set from storage tusb_mob: "固有ステータス"."炎属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."氷属性値" set from storage tusb_mob: "固有ステータス"."氷属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."雷属性値" set from storage tusb_mob: "固有ステータス"."雷属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."光属性値" set from storage tusb_mob: "固有ステータス"."光属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."闇属性値" set from storage tusb_mob: "固有ステータス"."闇属性値"
### SpawnDataに保存
data modify entity @s SpawnData.Passengers[0] set from storage tusb_mob: SpawnData
### Pos設定
data modify entity @s SpawnData.Pos set from storage tusb_mob: Pos
### 成長ステータス
# レベル
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."レベル" int 1 run scoreboard players get $_ Level
# 合計ポイント
execute store result score $_ BaseTotal run data get storage tusb_mob: "基礎ポイント"."合計ポイント"
execute store result score $_ GrowTotal run data get storage tusb_mob: "成長ポイント"."合計ポイント"
# 最大HP = 基礎最大HP / 基礎合計ポイント * 20 + 成長最大HP / 成長合計ポイント * レベル
execute store result score @s _ run data get storage tusb_mob: "基礎ポイント"."最大HP"
scoreboard players set $_ HPMax 20
scoreboard players operation @s _ *= $_ HPMax
scoreboard players operation @s _ /= $_ BaseTotal
scoreboard players operation @s HPMax = @s _
execute store result score @s _ run data get storage tusb_mob: "成長ポイント"."最大HP"
scoreboard players operation @s _ *= $_ Level
scoreboard players operation @s _ /= $_ GrowTotal
scoreboard players operation @s HPMax += @s _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."最大HP" int 1 run scoreboard players get @s HPMax
# 最大MP = 基礎最大MP / 基礎合計ポイント * 20 + 成長最大MP / 成長合計ポイント * レベル
execute store result score @s _ run data get storage tusb_mob: "基礎ポイント"."最大MP"
scoreboard players set $_ MPMax 20
scoreboard players operation @s _ *= $_ HPMax
scoreboard players operation @s _ /= $_ BaseTotal
scoreboard players operation @s MPMax = @s _
execute store result score @s _ run data get storage tusb_mob: "成長ポイント"."最大MP"
scoreboard players operation @s _ *= $_ Level
scoreboard players operation @s _ /= $_ GrowTotal
scoreboard players operation @s MPMax += @s _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."最大MP" int 1 run scoreboard players get @s MPMax
# 物理攻撃力 = 基礎物理攻撃力 / 基礎合計ポイント * 20 + 成長物理攻撃力 / 成長合計ポイント * レベル
execute store result score @s _ run data get storage tusb_mob: "基礎ポイント"."物理攻撃力"
scoreboard players set $_ Attack 20
scoreboard players operation @s _ *= $_ HPMax
scoreboard players operation @s _ /= $_ BaseTotal
scoreboard players operation @s Attack = @s _
execute store result score @s _ run data get storage tusb_mob: "成長ポイント"."物理攻撃力"
scoreboard players operation @s _ *= $_ Level
scoreboard players operation @s _ /= $_ GrowTotal
scoreboard players operation @s Attack += @s _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."物理攻撃力" int 1 run scoreboard players get @s Attack
# 物理防御力 = 基礎物理防御力 / 基礎合計ポイント * 20 + 成長物理防御力 / 成長合計ポイント * レベル
execute store result score @s _ run data get storage tusb_mob: "基礎ポイント"."物理防御力"
scoreboard players set $_ Defense 20
scoreboard players operation @s _ *= $_ HPMax
scoreboard players operation @s _ /= $_ BaseTotal
scoreboard players operation @s Defense = @s _
execute store result score @s _ run data get storage tusb_mob: "成長ポイント"."物理防御力"
scoreboard players operation @s _ *= $_ Level
scoreboard players operation @s _ /= $_ GrowTotal
scoreboard players operation @s Defense += @s _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."物理防御力" int 1 run scoreboard players get @s Defense
# 魔法攻撃力 = 基礎魔法攻撃力 / 基礎合計ポイント * 20 + 成長魔法攻撃力 / 成長合計ポイント * レベル
execute store result score @s _ run data get storage tusb_mob: "基礎ポイント"."魔法攻撃力"
scoreboard players set $_ SpecialAttack 20
scoreboard players operation @s _ *= $_ HPMax
scoreboard players operation @s _ /= $_ BaseTotal
scoreboard players operation @s SpecialAttack = @s _
execute store result score @s _ run data get storage tusb_mob: "成長ポイント"."魔法攻撃力"
scoreboard players operation @s _ *= $_ Level
scoreboard players operation @s _ /= $_ GrowTotal
scoreboard players operation @s SpecialAttack += @s _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."魔法攻撃力" int 1 run scoreboard players get @s SpecialAttack
# 魔法防御力 = 基礎魔法防御力 / 基礎合計ポイント * 20 + 成長魔法防御力 / 成長合計ポイント * レベル
execute store result score @s _ run data get storage tusb_mob: "基礎ポイント"."魔法防御力"
scoreboard players set $_ SpecialDefense 20
scoreboard players operation @s _ *= $_ HPMax
scoreboard players operation @s _ /= $_ BaseTotal
scoreboard players operation @s SpecialDefense = @s _
execute store result score @s _ run data get storage tusb_mob: "成長ポイント"."魔法防御力"
scoreboard players operation @s _ *= $_ Level
scoreboard players operation @s _ /= $_ GrowTotal
scoreboard players operation @s SpecialDefense += @s _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."魔法防御力" int 1 run scoreboard players get @s SpecialDefense
