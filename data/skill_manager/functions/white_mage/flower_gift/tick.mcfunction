##############################
### フラワーギフト飛翔時
##############################

execute if entity @s[tag=FlowerGift1] as @e[distance=..10,tag=Mob] at @s run data merge entity @s {Attributes:[{"Name":"generic.followRange",Base:15d}]}
execute if entity @s[tag=FlowerGift2] as @e[distance=..10,tag=Mob] at @s run data merge entity @s {Attributes:[{"Name":"generic.followRange",Base:10d}]}
execute if entity @s[tag=FlowerGift3] as @e[distance=..10,tag=Mob] at @s run data merge entity @s {Attributes:[{"Name":"generic.followRange",Base:5d}]}
execute if entity @s[tag=FlowerGift4] as @e[distance=..10,tag=Mob] at @s run data merge entity @s {Attributes:[{"Name":"generic.followRange",Base:0d}]}

execute if entity @s[tag=FlowerGift1] as @e[distance=..10,type=minecraft:spawner_minecart,tag=!Spawner] at @s run data merge entity @s {RequiredPlayerRange:15s}
execute if entity @s[tag=FlowerGift2] as @e[distance=..10,type=minecraft:spawner_minecart,tag=!Spawner] at @s run data merge entity @s {RequiredPlayerRange:10s}
execute if entity @s[tag=FlowerGift3] as @e[distance=..10,type=minecraft:spawner_minecart,tag=!Spawner] at @s run data merge entity @s {RequiredPlayerRange:5s}
execute if entity @s[tag=FlowerGift4] as @e[distance=..10,type=minecraft:spawner_minecart,tag=!Spawner] at @s run data merge entity @s {RequiredPlayerRange:0s}

###---演出---Start
particle minecraft:dust -8000000 -8000000 -8000000 2 ~ ~ ~ 0 0 0 1 2 force
###---演出---End
