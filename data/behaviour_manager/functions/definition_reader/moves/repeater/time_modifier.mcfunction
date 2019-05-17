##############################
### リピーター時間補正
##############################

scoreboard players operation @s RepeaterToStart = @s RepeaterStart
scoreboard players operation @s RepeaterToStart += @s GlobalCSTimer
scoreboard players operation @s RepeaterToNext = @s RepeaterEnd
scoreboard players operation @s RepeaterToNext += @s GlobalCSTimer
