# オフハンド
data remove storage item: Item
data modify storage item: Item set from storage tutorial_alpha: pop.Items[{Slot:-106b}]
data remove storage tutorial_alpha: pop.Items[{Slot:-106b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s weapon.offhand from block 2 2 2 container.0

#装備
data remove storage item: Item
data modify storage item: Item set from storage tutorial_alpha: pop.Items[{Slot:100b}]
data remove storage tutorial_alpha: pop.Items[{Slot:100b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.feet from block 2 2 2 container.0
data remove storage item: Item
data modify storage item: Item set from storage tutorial_alpha: pop.Items[{Slot:101b}]
data remove storage tutorial_alpha: pop.Items[{Slot:101b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.legs from block 2 2 2 container.0
data remove storage item: Item
data modify storage item: Item set from storage tutorial_alpha: pop.Items[{Slot:102b}]
data remove storage tutorial_alpha: pop.Items[{Slot:102b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.chest from block 2 2 2 container.0
data remove storage item: Item
data modify storage item: Item set from storage tutorial_alpha: pop.Items[{Slot:103b}]
data remove storage tutorial_alpha: pop.Items[{Slot:103b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.head from block 2 2 2 container.0

#ホットバー
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:0b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:1b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:2b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:3b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:4b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:5b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:6b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:7b}]
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[{Slot:8b}]
data remove storage tutorial_alpha: pop.Items[{Slot:0b}]
data remove storage tutorial_alpha: pop.Items[{Slot:1b}]
data remove storage tutorial_alpha: pop.Items[{Slot:2b}]
data remove storage tutorial_alpha: pop.Items[{Slot:3b}]
data remove storage tutorial_alpha: pop.Items[{Slot:4b}]
data remove storage tutorial_alpha: pop.Items[{Slot:5b}]
data remove storage tutorial_alpha: pop.Items[{Slot:6b}]
data remove storage tutorial_alpha: pop.Items[{Slot:7b}]
data remove storage tutorial_alpha: pop.Items[{Slot:8b}]
loot replace entity @s hotbar.0 9 mine 2 2 2 debug_stick

#インベントリ
data modify block 2 2 2 Items set value []
function tutorial_alpha:system/inventory/loop
loot replace entity @s inventory.0 27 mine 2 2 2 debug_stick
