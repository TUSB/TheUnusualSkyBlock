#> item:sign/soul_series/summoner/apply
##

data modify storage item: Item set from entity @s SelectedItem

data modify storage item: Soul.Attributes set value []
function settings:item/sign/soul_series/summoner

execute if items entity @s weapon.mainhand minecraft:shield run function item:sign/soul_series/apply_to/shield
execute if items entity @s weapon.mainhand #minecraft:foot_armor run function item:sign/soul_series/apply_to/boots
execute if items entity @s weapon.mainhand #minecraft:leg_armor run function item:sign/soul_series/apply_to/leggings
execute if items entity @s weapon.mainhand #minecraft:chest_armor run function item:sign/soul_series/apply_to/chestplate
execute if items entity @s weapon.mainhand #minecraft:head_armor run function item:sign/soul_series/apply_to/helmet

data modify storage item: Item.components."minecraft:attribute_modifiers".modifiers append from storage item: Soul.Attributes[]
data modify storage item: Item.components."minecraft:custom_data".ApplyedSoul set value "召喚士"
data modify storage item: Item.components."minecraft:lore" insert 0 value '{"translate":"魂 : %1$s","color":"white","italic":false,"with":[{"translate":"召喚士","color":"white","italic":false}]}'

## 付与
data modify storage item: Items set value []
data modify storage item: Items append from storage item: Item
function item:system/shulker_box/save
execute in area:control_area run item replace entity @s weapon.mainhand from block 2 2 2 container.0

## 演出
function makeup:item/sign/soul_series/summoner

## ブロック消去
setblock ~ ~ ~ minecraft:air
