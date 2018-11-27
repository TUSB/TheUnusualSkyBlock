##############################
### ワイルドヒーリング発動
##############################

execute if score @s ModeSkill matches 31041 run scoreboard players operation @s LastFoodLevel *= $1 Const
execute if score @s ModeSkill matches 31042 run scoreboard players operation @s LastFoodLevel *= $2 Const
execute if score @s ModeSkill matches 31043 run scoreboard players operation @s LastFoodLevel *= $3 Const

execute if score @s ModeSkill matches 31042 run function skill_manager:white_mage/clear/cure/level2
execute if score @s ModeSkill matches 31043 run function skill_manager:white_mage/clear/cure/level3

scoreboard players operation @s HealthHealing += @s LastFoodLevel

###---演出---Start
playsound minecraft:entity.parrot.imitate.ender_dragon master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:heart ~ ~ ~ 0.8 0.2 0.8 1 10 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"minecraft:entity_effect",Radius:1.5f,Duration:15,Color:16731405}
###---演出---End
