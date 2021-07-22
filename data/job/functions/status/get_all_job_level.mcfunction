
###全ての職業のレベルを取得する

scoreboard players set _ AddKnight 0
scoreboard players set _ AddNinja 0
scoreboard players set _ AddHunter 0
scoreboard players set _ AddWhiteMage 0
scoreboard players set _ AddBlackMage 0
scoreboard players set _ AddSummoner 0
scoreboard players set _ AddPuppetMaster 0
scoreboard players set _ AddThief 0

execute if score @s Job matches 1 run scoreboard players operation _ AddKnight = @s Level
execute if score @s Job matches 2 run scoreboard players operation _ AddNinja = @s Level
execute if score @s Job matches 3 run scoreboard players operation _ AddHunter = @s Level
execute if score @s Job matches 4 run scoreboard players operation _ AddWhiteMage = @s Level
execute if score @s Job matches 5 run scoreboard players operation _ AddBlackMage = @s Level
execute if score @s Job matches 6 run scoreboard players operation _ AddSummoner = @s Level
execute if score @s Job matches 7 run scoreboard players operation _ AddPuppetMaster = @s Level
execute if score @s Job matches 8 run scoreboard players operation _ AddThief = @s Level

execute if score _ AddKnight matches 0 store result score _ AddKnight run data get storage job: JobStatus[1].Level
execute if score _ AddNinja matches 0 store result score _ AddNinja run data get storage job: JobStatus[2].Level
execute if score _ AddHunter matches 0 store result score _ AddHunter run data get storage job: JobStatus[3].Level
execute if score _ AddWhiteMage matches 0 store result score _ AddWhiteMage run data get storage job: JobStatus[4].Level
execute if score _ AddBlackMage matches 0 store result score _ AddBlackMage run data get storage job: JobStatus[5].Level
execute if score _ AddSummoner matches 0 store result score _ AddSummoner run data get storage job: JobStatus[6].Level
execute if score _ AddPuppetMaster matches 0 store result score _ AddPuppetMaster run data get storage job: JobStatus[7].Level
execute if score _ AddThief matches 0 store result score _ AddThief run data get storage job: JobStatus[8].Level

scoreboard players set _ _ 50
scoreboard players operation _ AddKnight < _ _
scoreboard players operation _ AddNinja < _ _
scoreboard players operation _ AddHunter < _ _
scoreboard players operation _ AddWhiteMage < _ _
scoreboard players operation _ AddBlackMage < _ _
scoreboard players operation _ AddSummoner < _ _
scoreboard players operation _ AddPuppetMaster < _ _
scoreboard players operation _ AddThief < _ _
