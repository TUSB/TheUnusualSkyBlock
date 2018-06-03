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

###絡繰士
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 7100..7199 run function skill_manager:show_skill/puppet_master/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 7100..7199 run function skill_manager:show_skill/puppet_master/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 7200..7299 run function skill_manager:show_skill/puppet_master/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 7200..7299 run function skill_manager:show_skill/puppet_master/support/blue

###トリガー有効化
scoreboard players enable @s ChangeModeRed
scoreboard players enable @s ChangeModeBlue
scoreboard players enable @s ChangeSupRed
scoreboard players enable @s ChangeSupBlue

###スコアリセット
tag @s remove ShowSkillRed
tag @s remove ShowSkillBlue
scoreboard players reset @s ShowSkillNo
