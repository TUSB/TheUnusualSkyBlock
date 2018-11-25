##############################
### 最大レベル設定
##############################

function skill_manager:set/initialize

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

function effect_manager:status/lift_to_max
