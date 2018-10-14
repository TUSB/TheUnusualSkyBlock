execute unless score @s Global = $inf_rand Global run function item_manager:inf_chest/clone_chest

execute if block ~ ~ ~ minecraft:chest[facing=north,type=single,waterlogged=false] unless blocks ~ ~ ~ ~ ~ ~ 5 1 10 all run function item_manager:inf_chest/change_chest
execute unless block ~ ~ ~ minecraft:chest[facing=north,type=single,waterlogged=false] run function item_manager:inf_chest/destroy_chest

execute as @a[tag=change_inventory,distance=..5] positioned as @s run function item_manager:inf_chest/change_inventory

tag @s add DelayedTask
