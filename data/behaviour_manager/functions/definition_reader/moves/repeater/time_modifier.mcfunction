##############################
### リピーター時間補正
##############################

scoreboard players operation @s RepeaterToStart = @s RepeaterDelay
scoreboard players operation @s RepeaterToSTart += @s GlobalCSTimer
scoreboard players operation @s RepeaterToNext = @s RepeaterDuration
scoreboard players operation @s RepeaterToNext += @s GlobalCSTimer
