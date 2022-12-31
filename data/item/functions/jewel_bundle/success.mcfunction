#残り容量を計算
scoreboard players set # Calc 64
scoreboard players operation # Calc -= _ Calc

#魔石を入れる(エメラルドバンドルと共通function)
data modify storage item: Items set value []
data modify storage item: Items append from storage item: Inventory[{id:"minecraft:gold_nugget",tag:{EnchantStone:1b}}]
execute if score # Calc matches 1.. if data storage item: Items[0] run function item:emerald_bundle/store

#バンドルをルート
data modify storage item: Items set value []
data modify storage item: Items append from storage item: Bundle
data modify storage item: Slot set from storage item: Items[0].Slot
data modify storage item: Items[0].Slot set value 0b
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player

#成功フラグを立てる
data modify storage calc: Success set value 1b
