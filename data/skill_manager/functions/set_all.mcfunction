##############################
### 全スキル習得
##############################

scoreboard players set @s LevelKnight 100
scoreboard players set @s LevelNinja 100
scoreboard players set @s LevelHunter 100
scoreboard players set @s LevelWhiteMage 100
scoreboard players set @s LevelBlackMage 100
scoreboard players set @s LevelSummoner 100
scoreboard players set @s LevelPupMaster 100

scoreboard players set @s Level 100
scoreboard players set @s SubLevel 100
execute unless score @s Job matches 1..7 run scoreboard players set @s Job 1
scoreboard players set @s MPMax 10000
scoreboard players set @s MP 10000

scoreboard players set @s ModeSkillRed 1000
scoreboard players set @s ModeSkillBlue 1000
scoreboard players set @s SupportSkillRed 2000
scoreboard players set @s SupportSkillBlue 2000

scoreboard players set @s CritProbability 5
scoreboard players set @s CritRate 200

team join Friendly @s
