### メインハンドとオフハンドのスワップ検知処理
function oh_my_dat:please
data modify storage item: Item set value {}
data modify storage item: Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OffhandItem

scoreboard players set _ Calc 1
execute if data entity @s SelectedItem store success score _ Calc run data modify storage item: Item set from entity @s SelectedItem
execute if score _ Calc matches 0 anchored eyes positioned ^ ^-0.85 ^5 run function skill:shortcut/set/show

execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run data modify storage item: Item set value {}
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run data modify storage item: Item set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run data remove storage item: Item.Slot

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OffhandItem set from storage item: Item

#トリガー解除 不具合回避のため1tick遅らせる
schedule function skill:shortcut/set/revoke 1t replace
