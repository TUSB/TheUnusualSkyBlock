
###全ての職業のレベルを取得する

execute store result score _ KnightLv run data get storage job: JobStatus[1].Level
execute store result score _ NinjaLv run data get storage job: JobStatus[2].Level
execute store result score _ HunterLv run data get storage job: JobStatus[3].Level
execute store result score _ WhiteMageLv run data get storage job: JobStatus[4].Level
execute store result score _ BlackMageLv run data get storage job: JobStatus[5].Level
execute store result score _ SummonerLv run data get storage job: JobStatus[6].Level
execute store result score _ PuppetMasterLv run data get storage job: JobStatus[7].Level
execute store result score _ ThiefLv run data get storage job: JobStatus[8].Level

scoreboard players set _ _ 50
execute store result score @s KnightLv run scoreboard players operation _ KnightLv < _ _
execute store result score @s NinjaLv run scoreboard players operation _ NinjaLv < _ _
execute store result score @s HunterLv run scoreboard players operation _ HunterLv < _ _
execute store result score @s WhiteMageLv run scoreboard players operation _ WhiteMageLv < _ _
execute store result score @s BlackMageLv run scoreboard players operation _ BlackMageLv < _ _
execute store result score @s SummonerLv run scoreboard players operation _ SummonerLv < _ _
execute store result score @s PuppetMasterLv run scoreboard players operation _ PuppetMasterLv < _ _
execute store result score @s ThiefLv run scoreboard players operation _ ThiefLv < _ _

execute unless score @s Job matches 1 run scoreboard players operation @s KnightLv < @s SubLevel
execute unless score @s Job matches 2 run scoreboard players operation @s NinjaLv < @s SubLevel
execute unless score @s Job matches 3 run scoreboard players operation @s HunterLv < @s SubLevel
execute unless score @s Job matches 4 run scoreboard players operation @s WhiteMageLv < @s SubLevel
execute unless score @s Job matches 5 run scoreboard players operation @s BlackMageLv < @s SubLevel
execute unless score @s Job matches 6 run scoreboard players operation @s SummonerLv < @s SubLevel
execute unless score @s Job matches 7 run scoreboard players operation @s PuppetMasterLv < @s SubLevel
execute unless score @s Job matches 8 run scoreboard players operation @s ThiefLv < @s SubLevel
