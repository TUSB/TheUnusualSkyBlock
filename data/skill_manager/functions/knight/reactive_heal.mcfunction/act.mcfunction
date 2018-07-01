##############################
### リアクティブヒール発動
##############################

execute if score @s ModeSkill matches 11051 run scoreboard players set @s HealthHealing 4
execute if score @s ModeSkill matches 11052 run scoreboard players set @s HealthHealing 8
execute if score @s ModeSkill matches 11053 run scoreboard players set @s HealthHealing 14
execute if score @s ModeSkill matches 11054 run scoreboard players set @s HealthHealing 20

###---演出---Start
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 2
particle minecraft:heart ~ ~1 ~ 0.2 1 0.2 0 15 force
###---演出---End
