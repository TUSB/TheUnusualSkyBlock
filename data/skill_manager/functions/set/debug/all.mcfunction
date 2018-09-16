##############################
### 最大レベル設定
##############################

function skill_manager:set/initialize

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

function effect_manager:status/modify_max
function effect_manager:status/lift_to_max

team join Friendly @s
