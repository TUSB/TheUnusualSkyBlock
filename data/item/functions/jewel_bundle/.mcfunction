data modify storage calc: Success set value 0b
data modify storage item: Inventory set from entity @s Inventory

execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:8b,tag:{JewelBundle:1b}}] run data modify storage item: Bundle set from storage item: Inventory[{id:"minecraft:bundle",Slot:8b}]
execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:8b,tag:{JewelBundle:1b}}] run function item:jewel_bundle/content_check

execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:17b,tag:{JewelBundle:1b}}] run data modify storage item: Bundle set from storage item: Inventory[{id:"minecraft:bundle",Slot:17b}]
execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:17b,tag:{JewelBundle:1b}}] run function item:jewel_bundle/content_check

execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:26b,tag:{JewelBundle:1b}}] run data modify storage item: Bundle set from storage item: Inventory[{id:"minecraft:bundle",Slot:26b}]
execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:26b,tag:{JewelBundle:1b}}] run function item:jewel_bundle/content_check

execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:35b,tag:{JewelBundle:1b}}] run data modify storage item: Bundle set from storage item: Inventory[{id:"minecraft:bundle",Slot:35b}]
execute if data storage calc: {Success:0b} if data storage item: Inventory[{id:"minecraft:bundle",Slot:35b,tag:{JewelBundle:1b}}] run function item:jewel_bundle/content_check

advancement revoke @s only item:jewel_bundle
