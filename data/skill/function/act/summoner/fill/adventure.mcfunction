##############################
### フィール発動：アドベンチャー
##############################

execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~-0.5 ~-1 ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~-0.5 ~-1 ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~0.5 ~-1 ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute if block ~-0.5 ~-1 ~-0.5 minecraft:air positioned ~0.5 ~-1 ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~-0.5 ~ ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~-0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~0.5 ~ ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute unless block ~-0.5 ~-1 ~-0.5 minecraft:air if block ~-0.5 ~ ~-0.5 minecraft:air positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute at @e[tag=SummonedBlock,tag=!Initialized,distance=..1.5] run setblock ~ ~ ~ minecraft:white_wool keep
#持続時間 = (364 - Pos[1]) * Level
execute store result score _ Calc run data get entity @s Pos[1] -1
scoreboard players add _ Calc 364
scoreboard players operation _ Calc *= _ Level
execute as @e[tag=SummonedBlock,tag=!Initialized,distance=..1.5] store result entity @s PortalCooldown int 1 run scoreboard players get _ Calc
#演出
function makeup:skill/act/summoner/fill/adventure
