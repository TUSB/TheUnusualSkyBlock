#> player:load_equipments
### 装備をストレージに保存
#SelectedItem
data remove storage item: SelectedItem
data modify storage item: SelectedItem set from entity @s SelectedItem
data modify storage item: SelectedItem.Slot set from entity @s SelectedItemSlot
#Equipments 両手+防具
data modify storage item: Equipments set value []
data modify storage item: Equipments append from entity @s SelectedItem
data modify storage item: Equipments append from entity @s Inventory[{Slot:-106b}]
data modify storage item: Equipments append from entity @s Inventory[{Slot:100b}]
data modify storage item: Equipments append from entity @s Inventory[{Slot:101b}]
data modify storage item: Equipments append from entity @s Inventory[{Slot:102b}]
data modify storage item: Equipments append from entity @s Inventory[{Slot:103b}]
