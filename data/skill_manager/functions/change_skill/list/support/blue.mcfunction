##############################
### スキル変更リスト表示(サポートサファイア)
##############################

###サポートチェンジサファイア
scoreboard players operation @s ChangeLevel = @s SubLevel
execute if score @s ChangeSupBlue matches 1 run scoreboard players operation @s ChangeLevel < @s LevelKnight
execute if score @s ChangeSupBlue matches 2 run scoreboard players operation @s ChangeLevel < @s LevelNinja
execute if score @s ChangeSupBlue matches 3 run scoreboard players operation @s ChangeLevel < @s LevelHunter
execute if score @s ChangeSupBlue matches 4 run scoreboard players operation @s ChangeLevel < @s LevelWhiteMage
execute if score @s ChangeSupBlue matches 5 run scoreboard players operation @s ChangeLevel < @s LevelBlackMage
execute if score @s ChangeSupBlue matches 6 run scoreboard players operation @s ChangeLevel < @s LevelSummoner
execute if score @s ChangeSupBlue matches 7 run scoreboard players operation @s ChangeLevel < @s LevelPupMaster
execute if score @s ChangeSupBlue = @s Job run scoreboard players operation @s ChangeLevel > @s Level
execute if score @s ChangeSupBlue matches 1 run function skill_manager:change_skill/knight/support/blue
execute if score @s ChangeSupBlue matches 2 run function skill_manager:change_skill/ninja/support/blue
execute if score @s ChangeSupBlue matches 3 run function skill_manager:change_skill/hunter/support/blue
execute if score @s ChangeSupBlue matches 4 run function skill_manager:change_skill/white_mage/support/blue
execute if score @s ChangeSupBlue matches 5 run function skill_manager:change_skill/black_mage/support/blue
execute if score @s ChangeSupBlue matches 6 run function skill_manager:change_skill/summoner/support/blue
execute if score @s ChangeSupBlue matches 7 run function skill_manager:change_skill/puppet_master/support/blue
scoreboard players set @s ChangeSupBlue 0
scoreboard players enable @s ChangeSupBlue
