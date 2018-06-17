##############################
### スキル名表示
##############################

###未設定
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 01000..01999 run function skill_manager:show_skill/empty/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 01000..01999 run function skill_manager:show_skill/empty/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 02000..02999 run function skill_manager:show_skill/empty/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 02000..02999 run function skill_manager:show_skill/empty/support/blue

###剣士
execute if score @s ShowSkillNo matches 10000..19999 run function skill_manager:show_skill/knight

###忍者
execute if score @s ShowSkillNo matches 20000..29999 run function skill_manager:show_skill/ninja

###狩人
execute if score @s ShowSkillNo matches 30000..39999 run function skill_manager:show_skill/hunter

###白魔導士
execute if score @s ShowSkillNo matches 40000..49999 run function skill_manager:show_skill/white_mage

###黒魔導士
execute if score @s ShowSkillNo matches 50000..59999 run function skill_manager:show_skill/black_mage

###召喚士
execute if score @s ShowSkillNo matches 60000..69999 run function skill_manager:show_skill/summoner

###絡繰士
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 71000..71999 run function skill_manager:show_skill/puppet_master/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 71000..71999 run function skill_manager:show_skill/puppet_master/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 72000..72999 run function skill_manager:show_skill/puppet_master/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 72000..72999 run function skill_manager:show_skill/puppet_master/support/blue

###トリガー有効化
scoreboard players enable @s ChangeModeRed
scoreboard players enable @s ChangeModeBlue
scoreboard players enable @s ChangeSupRed
scoreboard players enable @s ChangeSupBlue

###スコアリセット
tag @s remove ShowSkillRed
tag @s remove ShowSkillBlue
scoreboard players reset @s ShowSkillNo

###---演出---Start
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
###---演出---End
