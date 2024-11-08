#> item:instant_item/recover_mp
data modify storage calc: List set value []
data modify storage calc: List append from storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect.RecoverMP
execute store result score _ _ run function calc:list/sum/x1
scoreboard players operation @s MP += _ _
scoreboard players operation @s MP < @s MPMax
function player:mp_bar/set

function makeup:skill/act/common/mp_recovery/act0
