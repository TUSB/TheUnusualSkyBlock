##############################
### 死の宣告回避
##############################

###---演出---Start
tellraw @a [{"selector":"@s"},{"text":"は死の運命から逃れた！","color":"green"}]
###---演出---End
scoreboard players reset @s DoomCount
