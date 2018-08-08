##############################
### リジェネレーション発動
##############################

###リジェネレーション設定
execute if score @s SupportSkill matches 42041 run effect give @a[distance=..10] minecraft:regeneration 180 1
execute if score @s SupportSkill matches 42042 run effect give @a[distance=..10] minecraft:regeneration 180 2
execute if score @s SupportSkill matches 42043 run effect give @a[distance=..10] minecraft:regeneration 180 3
execute if score @s SupportSkill matches 42044 run effect give @a[distance=..10] minecraft:regeneration 180 4

###---演出---Start
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.player.splash.high_speed master @a[distance=..16] ~ ~ ~ 0.8 0.8
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:mobSpell,ReapplicationDelay:40,Radius:1.5f,RadiusPerTick:0.05f,Duration:30,Color:16754929}
particle minecraft:instant_effect ~ ~0.2 ~ 1 0.2 1 1 40 force
particle minecraft:falling_dust minecraft:white_wool ~ ~3.5 ~ 1 0.1 1 0.5 60 force
particle minecraft:falling_dust minecraft:pink_wool ~ ~3 ~ 0.6 0.1 0.6 0.5 50 force
###---演出---End
