##############################
### ワイルドクッキング アイテム消費
##############################

data modify storage item: Items set value []
data modify storage item: Items append from entity @s Inventory[{tag:{WildCooking:1b}}]
function skill:act/hunter/wild_cooking/eat1
clear @s #skill:wild_cooking{WildCooking:1b}

advancement revoke @s only skill:wild_cooking
