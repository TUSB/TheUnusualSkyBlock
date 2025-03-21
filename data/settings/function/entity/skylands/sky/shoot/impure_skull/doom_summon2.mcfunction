#Function
tag @s add NowTarget
data modify storage mob_data: Call set value {Count:1,SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,ImpureSkull,Doom],Level:1}]]}
execute positioned ~ ~0.5 ~ run function skill:enemy/spawn/
