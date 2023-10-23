loot spawn ~ ~ ~ loot item:nether_star
execute if score _ _ matches 64.. run data modify entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=0,limit=1] Item.Count set value 64b
execute if score _ _ matches 1..63 store result entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=0,limit=1] Item.Count byte 1 run scoreboard players get _ _

scoreboard players remove _ _ 64
execute if score _ _ matches 1.. positioned ~ ~0.53 ~ run function enemy:break_spawner/nether_star
