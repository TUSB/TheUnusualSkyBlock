##############################
### スキル変更リスト表示(モードルビー)
##############################

###モードチェンジルビー
scoreboard players operation @s ChangeLevel = @s SubLevel
execute if score @s ChangeModeRed matches 1 run scoreboard players operation @s ChangeLevel < @s LevelKnight
execute if score @s ChangeModeRed matches 2 run scoreboard players operation @s ChangeLevel < @s LevelNinja
execute if score @s ChangeModeRed matches 3 run scoreboard players operation @s ChangeLevel < @s LevelHunter
execute if score @s ChangeModeRed matches 4 run scoreboard players operation @s ChangeLevel < @s LevelWhiteMage
execute if score @s ChangeModeRed matches 5 run scoreboard players operation @s ChangeLevel < @s LevelBlackMage
execute if score @s ChangeModeRed matches 6 run scoreboard players operation @s ChangeLevel < @s LevelSummoner
execute if score @s ChangeModeRed matches 7 run scoreboard players operation @s ChangeLevel < @s LevelPupMaster
execute if score @s ChangeModeRed = @s Job run scoreboard players operation @s ChangeLevel > @s Level
execute if score @s ChangeModeRed matches 1 run function skill_manager:change_skill/knight/mode/red
execute if score @s ChangeModeRed matches 2 run function skill_manager:change_skill/ninja/mode/red
execute if score @s ChangeModeRed matches 3 run function skill_manager:change_skill/hunter/mode/red
execute if score @s ChangeModeRed matches 4 run function skill_manager:change_skill/white_mage/mode/red
execute if score @s ChangeModeRed matches 5 run function skill_manager:change_skill/black_mage/mode/red
execute if score @s ChangeModeRed matches 6 run function skill_manager:change_skill/summoner/mode/red
execute if score @s ChangeModeRed matches 7 run function skill_manager:change_skill/puppet_master/mode/red
scoreboard players set @s ChangeModeRed 0
scoreboard players enable @s ChangeModeRed