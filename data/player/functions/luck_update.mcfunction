scoreboard players operation @s MPMax -= @s Luck
scoreboard players operation @s MPMax += _ Luck
execute if score @s MPMax matches ..-1 run scoreboard players set @s MPMax 0
scoreboard players operation @s MP < @s MPMax
scoreboard players operation @s Luck = _ Luck
