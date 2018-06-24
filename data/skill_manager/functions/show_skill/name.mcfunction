##############################
### スキル名表示
##############################

###未設定
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 01000..01999 run function skill_manager:show_skill/empty/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 01000..01999 run function skill_manager:show_skill/empty/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 02000..02999 run function skill_manager:show_skill/empty/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 02000..02999 run function skill_manager:show_skill/empty/support/blue

###剣士
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 11000..11999 run function skill_manager:show_skill/knight/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 11000..11999 run function skill_manager:show_skill/knight/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 12000..12999 run function skill_manager:show_skill/knight/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 12000..12999 run function skill_manager:show_skill/knight/support/blue

###忍者
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 21000..21999 run function skill_manager:show_skill/ninja/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 21000..21999 run function skill_manager:show_skill/ninja/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 22000..22999 run function skill_manager:show_skill/ninja/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 22000..22999 run function skill_manager:show_skill/ninja/support/blue

###狩人
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 31000..31999 run function skill_manager:show_skill/hunter/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 31000..31999 run function skill_manager:show_skill/hunter/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 32000..32999 run function skill_manager:show_skill/hunter/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 32000..32999 run function skill_manager:show_skill/hunter/support/blue

###白魔導士
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 41000..41999 run function skill_manager:show_skill/white_mage/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 41000..41999 run function skill_manager:show_skill/white_mage/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 42000..42999 run function skill_manager:show_skill/white_mage/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 42000..42999 run function skill_manager:show_skill/white_mage/support/blue

###黒魔導士
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 51000..51999 run function skill_manager:show_skill/black_mage/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 51000..51999 run function skill_manager:show_skill/black_mage/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 52000..52999 run function skill_manager:show_skill/black_mage/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 52000..52999 run function skill_manager:show_skill/black_mage/support/blue

###召喚士
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 61000..61999 run function skill_manager:show_skill/summoner/mode/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 61000..61999 run function skill_manager:show_skill/summoner/mode/blue
execute if score @s[tag=ShowSkillRed] ShowSkillNo matches 62000..62999 run function skill_manager:show_skill/summoner/support/red
execute if score @s[tag=ShowSkillBlue] ShowSkillNo matches 62000..62999 run function skill_manager:show_skill/summoner/support/blue

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
