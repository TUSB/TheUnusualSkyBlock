##############################
### スキル変更リスト表示(サポートサファイア)
##############################

scoreboard players operation @s[scores={ChangeSupBlue=9}] ChangeSupBlue = @s Job
scoreboard players operation $TargetSkillJob Global = @s ChangeSupBlue
function skill_manager:get_level
execute if score @s ChangeSupBlue matches 1 run function skill_manager:change_skill/knight/support/blue
execute if score @s ChangeSupBlue matches 2 run function skill_manager:change_skill/ninja/support/blue
execute if score @s ChangeSupBlue matches 3 run function skill_manager:change_skill/hunter/support/blue
execute if score @s ChangeSupBlue matches 4 run function skill_manager:change_skill/white_mage/support/blue
execute if score @s ChangeSupBlue matches 5 run function skill_manager:change_skill/black_mage/support/blue
execute if score @s ChangeSupBlue matches 6 run function skill_manager:change_skill/summoner/support/blue
execute if score @s ChangeSupBlue matches 7 run function skill_manager:change_skill/puppet_master/support/blue
scoreboard players set @s ChangeSupBlue 0
scoreboard players enable @s ChangeSupBlue
###演出
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
