##

data modify storage item: Item set from entity @s SelectedItem

data modify storage item: Soul.Attributes set value []
function settings:item/sign/soul_series/hunter

execute if predicate player:is_holding_shield run function item:sign/soul_series/apply_to/shield
execute if predicate player:is_holding_boots run function item:sign/soul_series/apply_to/boots
execute if predicate player:is_holding_leggings run function item:sign/soul_series/apply_to/leggings
execute if predicate player:is_holding_chestplate run function item:sign/soul_series/apply_to/chestplate
execute if predicate player:is_holding_helmet run function item:sign/soul_series/apply_to/helmet

data modify storage item: Item.tag.AttributeModifiers append from storage item: Soul.Attributes[]
data modify storage item: Item.tag.ApplyedSoul set value "狩人"
data modify storage item: Item.tag.display.Lore insert 0 value '[{"translate":"魂 : %1$s","color":"white","italic":"false","with":[{"translate":"狩人","color":"white","italic":"false"}]}]'

## 付与
item modify entity @s weapon.mainhand item:storage/item

## 演出
function makeup:item/sign/soul_series/hunter

## ブロック消去
setblock ~ ~ ~ minecraft:air