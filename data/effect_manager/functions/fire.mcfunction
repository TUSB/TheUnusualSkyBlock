##############################
### 着火
##############################

summon minecraft:arrow ~ ~-0.31 ~ {damage:0.001d,Motion:[0d,10d,0d],CustomName:"{\"text\":\"魔法の炎\",\"color\":\"red\"}"}
execute store result score $Duration Global run data get entity @s Attributes[2].Modifiers[0].Amount -1320
scoreboard players remove $Duration Global 200
execute positioned ~ ~-0.31 ~ store result entity @e[distance=0,type=minecraft:arrow,limit=1] Fire short 1 run scoreboard players get $Duration Global
execute positioned ~ ~-0.31 ~ run data merge entity @e[distance=0,type=minecraft:arrow,limit=1] {Fire:1000s}
execute store result score $Result Global positioned ~ ~-0.31 ~ run data get entity @e[distance=0,type=minecraft:arrow,limit=1] Fire
tellraw @a {"score":{"name":"$Result","objective":"Global"}}
effect clear @s minecraft:slowness
