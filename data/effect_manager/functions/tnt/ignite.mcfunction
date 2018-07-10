##############################
### トント爆発処理
##############################

summon minecraft:creeper ~ ~ ~ {Tags:[Initializing],Fuse:0s,CustomName:"[\"トント\"]"}
execute store result entity @e[tag=Initializing,limit=1] ExplosionRadius byte 1 run scoreboard players get @s TntCount
tag @e[tag=Initializing,limit=1] remove Initializing
scoreboard players reset @s TntCount
