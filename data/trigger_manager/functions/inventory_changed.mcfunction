execute if entity @e[tag=inf_chest,limit=1,distance=..5] run tag @s add change_inventory

advancement revoke @s only trigger_manager:inventory_changed
