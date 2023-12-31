###インベントリのブロックにAdv設置適性を設定
#シュルカーボックスにセット
data modify storage item: Items set value []
data modify storage item: Items append from storage item: CanPlaceOn[-1]
data modify storage item: Items[0].Slot set value 0b
# アイテム更新 HideFlags 他のフラグは無視
execute if data storage item: Items[0].tag.map run function item:custom_can_place_on/filled_map
data modify storage item: Items[0].tag.CanPlaceOn set value ["#item:can_place_on"]
data modify storage item: Items[0].tag.HideFlags set value 16
data modify storage item: Items[0].tag.CustomCanPlaceOn set value 1b
data modify storage item: Items[0].tag.display.Lore append value '{"translate":"アドベンチャーエリアで設置可能","italic":false,"color":"gray"}'
item modify entity @s weapon.mainhand item:storage/item
function item:system/shulker_box/save
#プレイヤーにルート
data modify storage item: Slot set from storage item: CanPlaceOn[-1].Slot
function item:system/shulker_box/loot_to_player
#再帰
data remove storage item: CanPlaceOn[-1]
execute if data storage item: CanPlaceOn[-1] run function item:custom_can_place_on/loop
