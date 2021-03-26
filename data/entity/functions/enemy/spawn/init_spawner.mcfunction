###########################################################################
# モブの(計算の要らない)基本情報を、スポナーに反映させる。
###########################################################################

### スポナーカートのOh My Datを取得
# Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[0].UUID[0]にOhMyDatIDを保存
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
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."炎属性値" set from storage tusb_mob: "固有ステータス"."炎属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."氷属性値" set from storage tusb_mob: "固有ステータス"."氷属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."雷属性値" set from storage tusb_mob: "固有ステータス"."雷属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."光属性値" set from storage tusb_mob: "固有ステータス"."光属性値"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス"."闇属性値" set from storage tusb_mob: "固有ステータス"."闇属性値"
### SpawnDataに保存
data modify entity @s SpawnData.Passengers[0] set from storage tusb_mob: SpawnData
### Pos設定
data modify entity @s SpawnData.Pos set from storage tusb_mob: Pos
