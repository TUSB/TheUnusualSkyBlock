##############################
### スキル変更リスト表示(モードルビー)
##############################

scoreboard players operation @s[scores={ChangeModeRed=9}] ChangeModeRed = @s Job
scoreboard players operation $TargetSkillJob Global = @s ChangeModeRed
function skill_manager:get_level
execute if score @s ChangeModeRed matches 0 run function skill_manager:change_skill/common/mode/red
execute if score @s ChangeModeRed matches 1 run function skill_manager:change_skill/knight/mode/red
execute if score @s ChangeModeRed matches 2 run function skill_manager:change_skill/ninja/mode/red
execute if score @s ChangeModeRed matches 3 run function skill_manager:change_skill/hunter/mode/red
execute if score @s ChangeModeRed matches 4 run function skill_manager:change_skill/white_mage/mode/red
execute if score @s ChangeModeRed matches 5 run function skill_manager:change_skill/black_mage/mode/red
execute if score @s ChangeModeRed matches 6 run function skill_manager:change_skill/summoner/mode/red
execute if score @s ChangeModeRed matches 7 run function skill_manager:change_skill/puppet_master/mode/red
scoreboard players set @s ChangeModeRed 0
scoreboard players enable @s ChangeModeRed
###---演出---Start
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
###---演出---End
