##############################
### レベル設定
##############################

execute store result score @s LevelKnight run clear @s minecraft:player_head{display:{Name:"[\"剣士\"]"}}
execute store result score @s LevelNinja run clear @s minecraft:player_head{display:{Name:"[\"忍者\"]"}}
execute store result score @s LevelHunter run clear @s minecraft:player_head{display:{Name:"[\"狩人\"]"}}
execute store result score @s LevelWhiteMage run clear @s minecraft:player_head{display:{Name:"[\"白魔導士\"]"}}
execute store result score @s LevelBlackMage run clear @s minecraft:player_head{display:{Name:"[\"黒魔導士\"]"}}
execute store result score @s LevelSummoner run clear @s minecraft:player_head{display:{Name:"[\"召喚士\"]"}}
execute store result score @s LevelPupMaster run clear @s minecraft:player_head{display:{Name:"[\"絡繰士\"]"}}

scoreboard players set @s Level 0
execute if score @s Job matches 1 run scoreboard players operation @s Level = @s LevelKnight
execute if score @s Job matches 2 run scoreboard players operation @s Level = @s LevelNinja
execute if score @s Job matches 3 run scoreboard players operation @s Level = @s LevelHunter
execute if score @s Job matches 4 run scoreboard players operation @s Level = @s LevelWhiteMage
execute if score @s Job matches 5 run scoreboard players operation @s Level = @s LevelBlackMage
execute if score @s Job matches 6 run scoreboard players operation @s Level = @s LevelSummoner
execute if score @s Job matches 7 run scoreboard players operation @s Level = @s LevelPupMaster

scoreboard players operation @s SubLevel = @s Level
scoreboard players remove @s SubLevel 50
scoreboard players operation @s SubLevel /= $2 Const

scoreboard players operation @s Level < $100 Const
scoreboard players operation @s Level > $0 Const
scoreboard players operation @s SubLevel < $25 Const
scoreboard players operation @s SubLevel > $0 Const

scoreboard players operation @s LevelKnight < $100 Const
scoreboard players operation @s LevelNinja < $100 Const
scoreboard players operation @s LevelHunter < $100 Const
scoreboard players operation @s LevelWhiteMage < $100 Const
scoreboard players operation @s LevelBlackMage < $100 Const
scoreboard players operation @s LevelSummoner < $100 Const
scoreboard players operation @s LevelPupMaster < $100 Const
