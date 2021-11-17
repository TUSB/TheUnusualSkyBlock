#MPの吸収量を初期化
scoreboard players set _ MPMax 0

execute if data storage mob_data: Call.Mob run function skill:enemy/damage/mob
execute if data storage mob_data: Call.Player run function skill:enemy/damage/player

#MPを吸収
scoreboard players operation @s MP += _ MPMax
scoreboard players operation @s MP < @s MPMax
