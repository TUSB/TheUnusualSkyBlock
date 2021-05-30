
### トント 爆発！

summon minecraft:creeper ~ ~ ~ {Tags:[Initializing],Fuse:0s,CustomName:'{"translate":"トント"}'}
execute store result entity @e[tag=Initializing,limit=1] ExplosionRadius byte 1 run scoreboard players get @s TntCount
tag @e[tag=Initializing] remove Initializing
scoreboard players reset @s TntCount
