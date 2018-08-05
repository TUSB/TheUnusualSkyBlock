##############################
### フィール発動
##############################

execute if entity @s[tag=Adv] run function skill_manager:summoner/summon_wool/act
execute if score @s[tag=!Adv] ModeSkill matches 61011 run function skill_manager:summoner/fill/level1
execute if score @s[tag=!Adv] ModeSkill matches 61012 run function skill_manager:summoner/fill/level2
execute if score @s[tag=!Adv] ModeSkill matches 61013 run function skill_manager:summoner/fill/level3
execute if score @s[tag=!Adv] ModeSkill matches 61014 run function skill_manager:summoner/fill/level4

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.puffer_fish.blow_up master @a[distance=..16] ~ ~ ~ 1 0.7
execute if score @s[tag=!Adv] ModeSkill matches 61011 run particle minecraft:entity_effect ~ ~0.05 ~ 0.6 0 0.6 1 15 force
execute if score @s[tag=!Adv] ModeSkill matches 61012 run particle minecraft:entity_effect ~ ~0.05 ~ 1 0 1 1 20 force
execute if score @s[tag=!Adv] ModeSkill matches 61013 run particle minecraft:entity_effect ~ ~0.05 ~ 1.5 0 1.5 1 40 force
execute if score @s[tag=!Adv] ModeSkill matches 61014 run particle minecraft:entity_effect ~ ~0.05 ~ 2 0 2 1 80 force
###---演出---End
