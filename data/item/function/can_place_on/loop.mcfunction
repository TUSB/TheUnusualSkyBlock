#> item:can_place_on/loop
###インベントリのブロックにAdv設置適性を設定
#シュルカーボックスにセット
data modify storage item: Items set value []
data modify storage item: Items append from storage item: CanPlaceOn[-1]
data modify storage item: Items[0].Slot set value 0b
# アイテム更新
execute if data storage item: Items[0].components."minecraft:map_id" run function item:can_place_on/filled_map
data modify storage item: Items[0].components."minecraft:can_place_on" set value {predicates:[{blocks:"#item:can_place_on"}],show_in_tooltip:false}
data modify storage item: Items[0].components."minecraft:custom_data".CustomCanPlaceOn set value 1b
data modify storage item: Items[0].components."minecraft:lore" append value '{"translate":"アドベンチャーエリアで設置可能","italic":false,"color":"gray"}'
function item:system/shulker_box/save
#プレイヤーにルート
data modify storage item: Slot set from storage item: CanPlaceOn[-1].Slot
function item:system/shulker_box/loot_to_player
#再帰
data remove storage item: CanPlaceOn[-1]
execute if data storage item: CanPlaceOn[-1] run function item:can_place_on/loop
