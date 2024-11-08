#> item:jewel_bundle/
data modify storage item: JewelBundle.Success set value 0b
data modify storage item: JewelBundle.Inventory set from entity @s Inventory

execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:8b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run data modify storage item: JewelBundle.Bundle set from storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:8b}]
execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:8b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run function item:jewel_bundle/content_check

execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:17b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run data modify storage item: JewelBundle.Bundle set from storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:17b}]
execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:17b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run function item:jewel_bundle/content_check

execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:26b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run data modify storage item: JewelBundle.Bundle set from storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:26b}]
execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:26b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run function item:jewel_bundle/content_check

execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:35b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run data modify storage item: JewelBundle.Bundle set from storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:35b}]
execute if data storage item: JewelBundle{Success:0b} if data storage item: JewelBundle.Inventory[{id:"minecraft:bundle",Slot:35b,components:{"minecraft:custom_data":{JewelBundle:1b}}}] run function item:jewel_bundle/content_check

data remove storage item: JewelBundle
advancement revoke @s only item:jewel_bundle
