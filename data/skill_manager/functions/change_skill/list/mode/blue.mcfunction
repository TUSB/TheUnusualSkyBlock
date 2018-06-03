##############################
### スキル変更リスト表示(モードサファイア)
##############################

###モードチェンジサファイア
scoreboard players operation @s ChangeLevel = @s SubLevel
execute if score @s ChangeModeBlue matches 1 run scoreboard players operation @s ChangeLevel < @s LevelKnight
execute if score @s ChangeModeBlue matches 2 run scoreboard players operation @s ChangeLevel < @s LevelNinja
execute if score @s ChangeModeBlue matches 3 run scoreboard players operation @s ChangeLevel < @s LevelHunter
execute if score @s ChangeModeBlue matches 4 run scoreboard players operation @s ChangeLevel < @s LevelWhiteMage
execute if score @s ChangeModeBlue matches 5 run scoreboard players operation @s ChangeLevel < @s LevelBlackMage
execute if score @s ChangeModeBlue matches 6 run scoreboard players operation @s ChangeLevel < @s LevelSummoner
execute if score @s ChangeModeBlue matches 7 run scoreboard players operation @s ChangeLevel < @s LevelPupMaster
execute if score @s ChangeModeBlue = @s Job run scoreboard players operation @s ChangeLevel > @s Level
execute if score @s ChangeModeBlue matches 1 run function skill_manager:change_skill/knight/mode/blue
execute if score @s ChangeModeBlue matches 2 run function skill_manager:change_skill/ninja/mode/blue
execute if score @s ChangeModeBlue matches 3 run function skill_manager:change_skill/hunter/mode/blue
execute if score @s ChangeModeBlue matches 4 run function skill_manager:change_skill/white_mage/mode/blue
execute if score @s ChangeModeBlue matches 5 run function skill_manager:change_skill/black_mage/mode/blue
execute if score @s ChangeModeBlue matches 6 run function skill_manager:change_skill/summoner/mode/blue
execute if score @s ChangeModeBlue matches 7 run function skill_manager:change_skill/puppet_master/mode/blue
scoreboard players set @s ChangeModeBlue 0
scoreboard players enable @s ChangeModeBlue
