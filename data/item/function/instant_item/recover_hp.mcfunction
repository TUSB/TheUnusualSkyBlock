#> item:instant_item/recover_hp
data modify storage calc: List set value []
data modify storage calc: List append from storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect.RecoverHP
execute store result score _ _ run function calc:list/sum/x1
scoreboard players operation @s HealthHealing += _ _

function makeup:skill/act/white_mage/cure/apply
