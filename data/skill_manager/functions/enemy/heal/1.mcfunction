##############################
### ヒールレベル１
##############################

scoreboard players set $Heal Global 10000
execute as @e[tag=Mob,distance=..8] positioned as @s run function skill_manager:enemy/heal/apply

###---演出---Start
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:0f,RadiusPerTick:0.5f,Duration:16,Color:4063160}
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.guardian.death_land master @a[distance=..16] ~ ~ ~ 1 1.2
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
###---演出---End
