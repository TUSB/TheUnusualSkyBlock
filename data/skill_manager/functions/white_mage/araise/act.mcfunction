##############################
### アレイズ発動
##############################

execute if score @s ModeSkill matches 42072 as @a[distance=..10,scores={Age=0}] at @s run scoreboard players operation @s MP = @s MPMax

execute as @a[distance=..10,scores={Age=0}] at @s run function skill_manager:white_mage/araise/raise
tag @a[distance=..10] add Reraise

###---演出---Start
execute as @a[distance=..10] run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"リレイズ","color":"white","hoverEvent":{"action":"show_text","value":"死亡時にレイズの効果を得る。","color":"white"}},"の効果！"]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:entity_effect,ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.05f,Duration:50,Color:16774912}
particle minecraft:end_rod ~ ~1.5 ~ 0.2 1.5 0.2 0 100 force
particle minecraft:end_rod ~ ~3 ~ 1 0.2 0 0 50 force
particle minecraft:end_rod ~ ~3 ~ 0 0.2 1 0 50 force
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.6
###---演出---End
