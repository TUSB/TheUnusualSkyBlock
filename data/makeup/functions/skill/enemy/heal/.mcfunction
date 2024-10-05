playsound entity.player.levelup hostile @a[distance=..32] ~ ~ ~ 1.0 1.8
playsound minecraft:block.brewing_stand.brew hostile @a[distance=..32] ~ ~ ~ 1 1
playsound minecraft:entity.guardian.death_land hostile @a[distance=..32] ~ ~ ~ 1 1.2
summon area_effect_cloud ~ ~0.5 ~ {Tags:[Initializing],Duration:8,Radius:0f,RadiusPerTick:1f,Particle:"entity_effect",Color:589683}
execute as @e[tag=Initializing,limit=1] store result entity @s RadiusPerTick float 0.00125 run scoreboard players get # _
tag @e[tag=Initializing] remove Initializing