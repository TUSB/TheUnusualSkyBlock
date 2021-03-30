#エンチャント台UIの配置にセット
data modify storage item: Items set value [{Slot:22b,id:"minecraft:gold_nugget",Count:1b}]
data modify storage item: Items append from storage item: Inventory[-1]
data modify storage item: Items[-1].Slot set value 4b
data modify storage item: Items[{Slot:22b}].tag set from storage item: Items[-1].tag.SocketedStone
#SocketedStoneとLore[0]を削除
data remove storage item: Items[{Slot:4b}].tag.SocketedStone
data remove storage item: Items[{Slot:4b}].tag.display.Lore[0]
#ブロックに移す
function item:system/shulker_box/save
#エンチャント
execute in area:control_area positioned 2 2 2 run function item:enchant/enchant/success/init
#プレイヤーにルート
data modify storage item: Items[{Slot:4b}].Slot set value 0b
function item:system/shulker_box/save
data modify storage item: Slot set from storage item: Inventory[-1].Slot
function item:system/shulker_box/loot_to_player
#再帰
data remove storage item: Inventory[-1]
execute if data storage item: Inventory[-1] run function item:enchant/socketed_stone/loop
