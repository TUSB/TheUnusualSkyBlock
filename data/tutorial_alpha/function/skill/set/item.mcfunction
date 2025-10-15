#> tutorial_alpha:skill/set/item

clear @s *[custom_data~{tutorial_item:true}]
give @s carrot_on_a_stick[custom_data={tutorial_item:true}]
give @s carrot_on_a_stick[custom_data={tutorial_item:true}]
give @s stone_sword[custom_data={tutorial_item:true}]
give @s stone_sword[custom_data={tutorial_item:true}]
give @s stone_axe[custom_data={tutorial_item:true}]
give @s bow[custom_data={tutorial_item:true}]
give @s arrow[custom_data={tutorial_item:true}] 64
give @s shield[custom_data={tutorial_item:true}]
loot spawn ~ ~ ~ loot item:item/carrot_on_a_stick/ether
data merge entity @e[type=item,distance=0,limit=1] {PickupDelay:0s,Item:{components:{"minecraft:custom_data":{tutorial_item:true}}}}
