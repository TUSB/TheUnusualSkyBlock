
#実行者にSpawnEntities[0][0]のデータを持たせます。

#データを初期化
data remove storage tusb_mob: "即時ステータス"
data remove storage tusb_mob: "遅延ステータス"

data modify entity @s Tags set from storage tusb_mob: Tags.SpawnEntities[0][0].Tags
function settings:enemy/
function #oh_my_dat:please

data modify entity @s {} merge from storage tusb_mob: "即時ステータス"."ベース"
data modify entity @s {} merge from storage tusb_mob: "即時ステータス"."見た目"
execute if data entity @s {Tags:[Enemy]} unless data entity @s Team run data modify entity @s Team set value "Enemy"
execute if data entity @s {Team:"None"} run data remove entity @s Team
data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set from storage tusb_mob: "即時ステータス"."最大感知範囲"
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage tusb_mob: "即時ステータス"."基本移動力"
data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set from storage tusb_mob: "即時ステータス"."ノックバック耐性"
data modify entity @s Attributes[{Name:"minecraft:generic.attack_knockback"}].Base set from storage tusb_mob: "即時ステータス"."ノックバック力"

execute store result entity @s TicksFrozen int 1 run scoreboard players get @s OhMyDatID
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList append value {Level:0,"遅延ステータス":{}}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1].Level set from storage tusb_mob: Tags.SpawnEntities[0][0].Level
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[-1]."遅延ステータス" set from storage tusb_mob: "遅延ステータス"