##############################
### フィール発動
##############################

scoreboard players add @s FillSize 0

execute if entity @s[tag=Adv] run function skill_manager:summoner/summon_wool/act
execute if score @s[tag=!Adv] FillSize matches 0 run function skill_manager:summoner/fill/level1
execute if score @s[tag=!Adv] FillSize matches 1 run function skill_manager:summoner/fill/level3
execute if score @s[tag=!Adv] FillSize matches 2 run function skill_manager:summoner/fill/level5
execute if score @s[tag=!Adv] FillSize matches 3 run function skill_manager:summoner/fill/level7
execute if score @s[tag=!Adv] FillSize matches 4 run function skill_manager:summoner/fill/level9

function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score @s[tag=!Adv] ModeSkill matches 61012 if score $Random Global matches ..24 run scoreboard players operation @s MP += $6101 Cost
execute if score @s[tag=!Adv] ModeSkill matches 61013 if score $Random Global matches ..49 run scoreboard players operation @s MP += $6101 Cost
execute if score @s[tag=!Adv] ModeSkill matches 61014 if score $Random Global matches ..99 run scoreboard players operation @s MP += $6101 Cost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.puffer_fish.blow_up master @a[distance=..16] ~ ~ ~ 1 0.7
execute if score @s[tag=!Adv] FillSize matches 0 run particle minecraft:entity_effect ~ ~0.05 ~ 0.2 0 0.2 1 5 force
execute if score @s[tag=!Adv] FillSize matches 1 run particle minecraft:entity_effect ~ ~0.05 ~ 0.6 0 0.6 1 15 force
execute if score @s[tag=!Adv] FillSize matches 2 run particle minecraft:entity_effect ~ ~0.05 ~ 1 0 0 1 20 force
execute if score @s[tag=!Adv] FillSize matches 3 run particle minecraft:entity_effect ~ ~0.05 ~ 1.5 0 1.5 1 40 force
execute if score @s[tag=!Adv] FillSize matches 4 run particle minecraft:entity_effect ~ ~0.05 ~ 2.0 0 2.0 1 50 force
###---演出---End
