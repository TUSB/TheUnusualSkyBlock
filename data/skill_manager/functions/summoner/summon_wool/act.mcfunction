##############################
### サモンＢ：ウール発動
##############################

execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~-0.5 ~-1 ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~-0.5 ~-1 ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~0.5 ~-1 ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~0.5 ~-1 ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~-0.5 ~ ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~-0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~0.5 ~ ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,TickingTask,Initializing]}
execute as @e[tag=Initializing] at @s run setblock ~ ~ ~ minecraft:white_wool keep

execute store result score $Height Global run data get entity @s Pos[1] 1
scoreboard players remove $Height Global 300
scoreboard players operation $Height Global *= $-1 Const
execute if score @s ModeSkill matches 61052 run scoreboard players operation $Height Global *= $2 Const

execute as @e[tag=Initializing] at @s store result entity @s PortalCooldown int 1 run scoreboard players get $Height Global
tag @e[tag=Initializing] remove Initializing

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
