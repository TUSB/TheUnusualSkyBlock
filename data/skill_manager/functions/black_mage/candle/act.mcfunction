##############################
### キャンドル発動
##############################

execute if block ~ ~2.1 ~ minecraft:air run summon minecraft:endermite ~ ~2.1 ~ {Tags:[Candle,NativeTask,TickingRequired,Initializing,Initialized],PortalCooldown:1,LifeTime:2000,Fire:1200s,PortalCooldown:300,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1200,ShowParticles:true}],Invulnerable:true,Silent:true,NoAI:true}

execute store result score $Height Global run data get entity @s Pos[1] 1
scoreboard players remove $Height Global 300
scoreboard players operation $Height Global *= $-1 Const
execute if score @s ModeSkill matches 52022 run scoreboard players operation $Height Global *= $2 Const

execute as @e[tag=Initializing,limit=1] store result entity @s PortalCooldown int 1 run scoreboard players get $Height Global
execute as @e[tag=Candle,distance=..0.01,limit=1] store result entity @s PortalCooldown int 1 run scoreboard players get $Height Global
tag @e[tag=Initializing,limit=1] remove Initializing

execute positioned ~-5 ~-3 ~-5 as @e[type=minecraft:spawner_minecart,tag=Spawner,dx=10,dy=8,dz=10] store result entity @s Delay short 1 run scoreboard players get $Height Global

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:lava ~ ~2.1 ~ 0.2 0 0.2 1 3 force @a[tag=ShowParticles]
###---演出---End
