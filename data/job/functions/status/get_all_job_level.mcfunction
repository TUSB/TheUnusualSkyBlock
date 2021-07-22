
###全ての職業のレベルを取得する

scoreboard players set @s KnightLv 0
scoreboard players set @s NinjaLv 0
scoreboard players set @s HunterLv 0
scoreboard players set @s WhiteMageLv 0
scoreboard players set @s BlackMageLv 0
scoreboard players set @s SummonerLv 0
scoreboard players set @s PuppetMasterLv 0
scoreboard players set @s ThiefLv 0

execute if score @s Job matches 1 run scoreboard players operation @s KnightLv = @s Level
execute if score @s Job matches 2 run scoreboard players operation @s NinjaLv = @s Level
execute if score @s Job matches 3 run scoreboard players operation @s HunterLv = @s Level
execute if score @s Job matches 4 run scoreboard players operation @s WhiteMageLv = @s Level
execute if score @s Job matches 5 run scoreboard players operation @s BlackMageLv = @s Level
execute if score @s Job matches 6 run scoreboard players operation @s SummonerLv = @s Level
execute if score @s Job matches 7 run scoreboard players operation @s PuppetMasterLv = @s Level
execute if score @s Job matches 8 run scoreboard players operation @s ThiefLv = @s Level

execute if score @s KnightLv matches 0 store result score @s KnightLv run data get storage job: JobStatus[1].Level
execute if score @s NinjaLv matches 0 store result score @s NinjaLv run data get storage job: JobStatus[2].Level
execute if score @s HunterLv matches 0 store result score @s HunterLv run data get storage job: JobStatus[3].Level
execute if score @s WhiteMageLv matches 0 store result score @s WhiteMageLv run data get storage job: JobStatus[4].Level
execute if score @s BlackMageLv matches 0 store result score @s BlackMageLv run data get storage job: JobStatus[5].Level
execute if score @s SummonerLv matches 0 store result score @s SummonerLv run data get storage job: JobStatus[6].Level
execute if score @s PuppetMasterLv matches 0 store result score @s PuppetMasterLv run data get storage job: JobStatus[7].Level
execute if score @s ThiefLv matches 0 store result score @s ThiefLv run data get storage job: JobStatus[8].Level

scoreboard players set _ _ 50
scoreboard players operation @s KnightLv < _ _
scoreboard players operation @s NinjaLv < _ _
scoreboard players operation @s HunterLv < _ _
scoreboard players operation @s WhiteMageLv < _ _
scoreboard players operation @s BlackMageLv < _ _
scoreboard players operation @s SummonerLv < _ _
scoreboard players operation @s PuppetMasterLv < _ _
scoreboard players operation @s ThiefLv < _ _
