##############################
### プレイヤー初期化
##############################

scoreboard players set @s LevelKnight 0
scoreboard players set @s LevelNinja 0
scoreboard players set @s LevelHunter 0
scoreboard players set @s LevelWhiteMage 0
scoreboard players set @s LevelBlackMage 0
scoreboard players set @s LevelSummoner 0
scoreboard players set @s LevelPupMaster 0

scoreboard players set @s Level 0
scoreboard players set @s SubLevel 0
scoreboard players set @s Job 0
scoreboard players set @s Exp 0
scoreboard players set @s RequiredExp 0

function skill_manager:set/blank_skill
function skill_manager:set/critical

function effect_manager:status/lift_to_max

function calc_manager:set/id

team join Friendly @s

function main:status/level_up
