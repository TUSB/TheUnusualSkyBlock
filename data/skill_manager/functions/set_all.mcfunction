##############################
### 全スキル習得
##############################

scoreboard players set @s LevelKnight 50
scoreboard players set @s LevelNinja 50
scoreboard players set @s LevelHunter 50
scoreboard players set @s LevelWhiteMage 50
scoreboard players set @s LevelBlackMage 50
scoreboard players set @s LevelSummoner 50
scoreboard players set @s LevelPupMaster 50

scoreboard players set @s Level 50
scoreboard players set @s SubLevel 50
execute unless score @s Job matches 1..7 run scoreboard players set @s Job 1

scoreboard players set @s ModeSkillRed 1000
scoreboard players set @s ModeSkillBlue 1000
scoreboard players set @s SupportSkillRed 2000
scoreboard players set @s SupportSkillBlue 2000

scoreboard players set @s CritProbability 5
scoreboard players set @s CritRate 200

team join Friendly @s

function effect_manager:status/modify_max
function effect_manager:status/lift_to_max
