##############################
### スキル名表示
##############################

###剣士
execute if score @s ShowSkillNo matches 1000..1999 run function skill_manager:show_skill/knight

###忍者
execute if score @s ShowSkillNo matches 2000..2999 run function skill_manager:show_skill/ninja

###狩人
execute if score @s ShowSkillNo matches 3000..3999 run function skill_manager:show_skill/hunter

###白魔導士
execute if score @s ShowSkillNo matches 4000..4999 run function skill_manager:show_skill/white_mage

###黒魔導士
execute if score @s ShowSkillNo matches 5000..5999 run function skill_manager:show_skill/black_mage

###召喚士
execute if score @s ShowSkillNo matches 6000..6999 run function skill_manager:show_skill/summoner

###スコアリセット
scoreboard players reset @s ShowSkillNo
