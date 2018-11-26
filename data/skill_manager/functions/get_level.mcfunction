##############################
### スキル変更レベル取得
##############################

scoreboard players operation @s ChangeLevel = @s SubLevel
execute if score $QuestCompleted Settings matches 1 run scoreboard players operation @s ChangeLevel *= $2 Const
execute if score $TargetSkillJob Global matches 1 run scoreboard players operation @s ChangeLevel < @s LevelKnight
execute if score $TargetSkillJob Global matches 2 run scoreboard players operation @s ChangeLevel < @s LevelNinja
execute if score $TargetSkillJob Global matches 3 run scoreboard players operation @s ChangeLevel < @s LevelHunter
execute if score $TargetSkillJob Global matches 4 run scoreboard players operation @s ChangeLevel < @s LevelWhiteMage
execute if score $TargetSkillJob Global matches 5 run scoreboard players operation @s ChangeLevel < @s LevelBlackMage
execute if score $TargetSkillJob Global matches 6 run scoreboard players operation @s ChangeLevel < @s LevelSummoner
execute if score $TargetSkillJob Global matches 7 run scoreboard players operation @s ChangeLevel < @s LevelPupMaster
execute if score $TargetSkillJob Global matches 8 run scoreboard players operation @s ChangeLevel < @s Level
execute if score $TargetSkillJob Global = @s Job run scoreboard players operation @s ChangeLevel > @s Level
