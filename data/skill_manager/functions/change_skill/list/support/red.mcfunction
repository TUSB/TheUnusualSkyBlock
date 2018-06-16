##############################
### スキル変更リスト表示(サポートルビー)
##############################

scoreboard players operation @s[scores={ChangeSupRed=9}] ChangeSupRed = @s Job
scoreboard players operation $TargetSkillJob Global = @s ChangeSupRed
function skill_manager:get_level
execute if score @s ChangeSupRed matches 1 run function skill_manager:change_skill/knight/support/red
execute if score @s ChangeSupRed matches 2 run function skill_manager:change_skill/ninja/support/red
execute if score @s ChangeSupRed matches 3 run function skill_manager:change_skill/hunter/support/red
execute if score @s ChangeSupRed matches 4 run function skill_manager:change_skill/white_mage/support/red
execute if score @s ChangeSupRed matches 5 run function skill_manager:change_skill/black_mage/support/red
execute if score @s ChangeSupRed matches 6 run function skill_manager:change_skill/summoner/support/red
execute if score @s ChangeSupRed matches 7 run function skill_manager:change_skill/puppet_master/support/red
scoreboard players set @s ChangeSupRed 0
scoreboard players enable @s ChangeSupRed
###---演出---Start
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
###---演出---End
