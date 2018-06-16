##############################
### スキル変更リスト表示(モードサファイア)
##############################

scoreboard players operation @s[scores={ChangeModeBlue=9}] ChangeModeBlue = @s Job
scoreboard players operation $TargetSkillJob Global = @s ChangeModeBlue
function skill_manager:get_level
execute if score @s ChangeModeBlue matches 1 run function skill_manager:change_skill/knight/mode/blue
execute if score @s ChangeModeBlue matches 2 run function skill_manager:change_skill/ninja/mode/blue
execute if score @s ChangeModeBlue matches 3 run function skill_manager:change_skill/hunter/mode/blue
execute if score @s ChangeModeBlue matches 4 run function skill_manager:change_skill/white_mage/mode/blue
execute if score @s ChangeModeBlue matches 5 run function skill_manager:change_skill/black_mage/mode/blue
execute if score @s ChangeModeBlue matches 6 run function skill_manager:change_skill/summoner/mode/blue
execute if score @s ChangeModeBlue matches 7 run function skill_manager:change_skill/puppet_master/mode/blue
scoreboard players set @s ChangeModeBlue 0
scoreboard players enable @s ChangeModeBlue
###---演出---Start
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
###---演出---End
