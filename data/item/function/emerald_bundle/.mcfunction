#> item:emerald_bundle/
data modify storage item: EmeraldBundle.Success set value 0b
data modify storage item: EmeraldBundle.Inventory set from entity @s Inventory

execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:8b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run data modify storage item: EmeraldBundle.Bundle set from storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:8b}]
execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:8b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run function item:emerald_bundle/content_check

execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:17b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run data modify storage item: EmeraldBundle.Bundle set from storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:17b}]
execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:17b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run function item:emerald_bundle/content_check

execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:26b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run data modify storage item: EmeraldBundle.Bundle set from storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:26b}]
execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:26b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run function item:emerald_bundle/content_check

execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:35b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run data modify storage item: EmeraldBundle.Bundle set from storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:35b}]
execute if data storage item: EmeraldBundle{Success:0b} if data storage item: EmeraldBundle.Inventory[{id:"minecraft:bundle",Slot:35b,components:{"minecraft:custom_data":{EmeraldBundle:1b}}}] run function item:emerald_bundle/content_check

data remove storage item: EmeraldBundle
advancement revoke @s only item:emerald_bundle
