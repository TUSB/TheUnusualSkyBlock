##############################
### pikmin/paraboraサブルーチン２
##############################

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ minecraft:air run scoreboard players set $ParaboraFlag Local 0
execute if entity @e[dx=0,dy=0,dz=0,limit=1] unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set $ParaboraFlag Local 0
execute if score $ParaboraFlag Local matches 0 facing entity @s eyes positioned ^ ^ ^0.5 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
