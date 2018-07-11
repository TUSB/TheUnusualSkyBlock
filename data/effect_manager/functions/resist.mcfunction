##############################
### 状態異常耐性減少
##############################

scoreboard players remove @s ResistEffects 1
scoreboard players operation @s ResistEffects > @s ResistMin
scoreboard players operation @s ResistEffects < $100 Const
