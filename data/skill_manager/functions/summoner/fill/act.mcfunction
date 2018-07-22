##############################
### フィール発動
##############################

execute if entity @s[tag=Adv] run function skill_manager:summoner/summon_wool/act
execute if score @s[tag=!Adv] ModeSkill matches 61011 run function skill_manager:summoner/fill/level1
execute if score @s[tag=!Adv] ModeSkill matches 61012 run function skill_manager:summoner/fill/level2
execute if score @s[tag=!Adv] ModeSkill matches 61013 run function skill_manager:summoner/fill/level3
execute if score @s[tag=!Adv] ModeSkill matches 61014 run function skill_manager:summoner/fill/level4

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
