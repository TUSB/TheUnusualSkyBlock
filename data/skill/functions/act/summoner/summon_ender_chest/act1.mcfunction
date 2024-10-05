##############################
### サモンＢ：エンダーチェスト発動
##############################

execute if block ~ ~-0.875 ~ minecraft:air positioned ~ ~-0.875 ~ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute unless block ~ ~-0.875 ~ minecraft:air if block ~ ~0.125 ~ minecraft:air align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,SummonedBlock,NativeTask]}
execute positioned as @e[tag=SummonedBlock,tag=!Initialized,distance=..2] run setblock ~ ~ ~ minecraft:ender_chest keep
#持続時間 = (364 - Pos[1]) * Level
execute store result score _ Calc run data get entity @s Pos[1] -1
scoreboard players add _ Calc 364
execute store result entity @e[tag=SummonedBlock,tag=!Initialized,distance=..2,limit=1,sort=nearest] PortalCooldown int 1 run scoreboard players operation _ Calc *= _ Level
#演出
function makeup:skill/act/summoner/summon_ender_chest/act1
