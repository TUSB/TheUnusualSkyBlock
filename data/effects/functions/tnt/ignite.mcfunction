
### トント 爆発！

summon minecraft:creeper ~ ~500 ~ {Tags:[Tnt],Fuse:0s,CustomName:'{"translate":"トント"}'}
execute positioned ~ ~500 ~ run tp @e[type=creeper,tag=!Initialized,distance=0,limit=1] ~ ~-500 ~
execute store result entity @e[tag=Tnt,distance=0,limit=1] ExplosionRadius byte 1 run scoreboard players get @s TntCount
scoreboard players reset @s TntCount
