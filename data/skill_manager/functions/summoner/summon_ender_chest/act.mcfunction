##############################
### サモンＢ：エンダーチェスト発動
##############################

execute if block ~ ~-0.875 ~ minecraft:air positioned ~ ~-0.875 ~ align xyz if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,NativeTask,Initializing]}
execute unless block ~ ~-0.875 ~ minecraft:air if block ~ ~0.125 ~ minecraft:air align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[SummonedBlock,NativeTask,Initializing]}
execute as @e[tag=Initializing] at @s run setblock ~ ~ ~ minecraft:ender_chest keep

execute store result score $Height Global run data get entity @s Pos[1] 1
scoreboard players remove $Height Global 300
scoreboard players operation $Height Global *= $-1 Const
scoreboard players operation $Height Global *= $TimeBonus Global

execute as @e[tag=Initializing] at @s store result entity @s PortalCooldown int 1 run scoreboard players get $Height Global
tag @e[tag=Initializing] remove Initializing

###---演出---Start
playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.ghast.ambient master @a[distance=..16] ~ ~ ~ 1 1.8
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:portal ~ ~ ~ 0 0 0 1 300 force
particle minecraft:entity_effect ~ ~0.05 ~ 1 1 1 1 25 force
###---演出---End
