#? item:jewel_bundle/success
#残り容量を計算
scoreboard players set # Calc 64
scoreboard players operation # Calc -= _ Calc

#魔石を入れる(エメラルドバンドルと共通function)
data modify storage item: JewelBundle.Items set value []
data modify storage item: JewelBundle.Items append from storage item: JewelBundle.Inventory[{id:"minecraft:gold_nugget",components:{"minecraft:custom_data":{EnchantStone:1b}}}]
execute if score # Calc matches 1.. if data storage item: JewelBundle.Items[0] run function item:jewel_bundle/store

#バンドルをルート
data modify storage item: Items set value []
data modify storage item: Items append from storage item: JewelBundle.Bundle
data modify storage item: Slot set from storage item: Items[0].Slot
data modify storage item: Items[0].Slot set value 0b
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player

#成功フラグを立てる
data modify storage item: JewelBundle.Success set value 1b
