##############################
### デコイ発動
##############################

###---演出---Start
execute if score @s SupportSkill matches 12041 as @e[distance=..10] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~-1 ~ 0.2 1 0.2 0 100 force
execute if score @s SupportSkill matches 12042 as @e[distance=..20] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
execute if score @s SupportSkill matches 12043 as @e[distance=..30] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 3 0.5
summon minecraft:turtle ~ ~ ~ {PortalCooldown:100,Tags:[CooldownRequired],Age:-3000,Silent:true,DeathTime:19,Attributes:[{Name:generic.movementSpeed,Base:0}],ActiveEffects:[{Id:2,Amplifier:255,Duration:200000000},{Id:11,Amplifier:0,Duration:200000000},{Id:14,Amplifier:0,Duration:200000000}],DeathLootTable:"minecraft:empty",Passengers:[{id:"minecraft:armor_stand",PortalCooldown:100,Tags:[CooldownRequired],ShowArms:true,Invulnerable:true,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],DisabledSlots:2031873}]}
###---演出---End

execute if score @s SupportSkill matches 12041 as @e[distance=..10] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 12042 as @e[distance=..20] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 12043 as @e[distance=..30] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~
