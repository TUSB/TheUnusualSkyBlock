#> item:instant_item/recover_hb
execute if data storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect{RecoverHB:1} run effect give @s absorption 60 2 true
execute if data storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect{RecoverHB:2} run effect give @s absorption 60 4 true
execute if data storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect{RecoverHB:3} run effect give @s absorption 60 6 true
execute if data storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect{RecoverHB:4} run effect give @s absorption 60 9 true

function makeup:item/instant_item/recover_hb
