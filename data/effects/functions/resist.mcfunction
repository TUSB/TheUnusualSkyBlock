
###状態異常耐性減少

scoreboard players remove @s ResistEffects 1
scoreboard players remove @s[scores={ResistEffects=101..}] ResistEffects 1
# 状態異常耐性下限の名残
scoreboard players set _ _ 0
scoreboard players operation @s ResistEffects > _ _
# scoreboard players set _ _ 100
# scoreboard players operation @s ResistEffects < _ _
