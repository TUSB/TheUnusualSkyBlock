##############################
### ライトニングブロー発動
##############################

scoreboard players set $BlowPower Global 150000
scoreboard players operation $BlowPower Global -= @s LightningBlow
execute if score @s ModeSkill matches 51031 run scoreboard players operation $BlowPower Global *= $1 Const
execute if score @s ModeSkill matches 51032 run scoreboard players operation $BlowPower Global *= $5 Const
execute if score @s ModeSkill matches 51033 run scoreboard players operation $BlowPower Global *= $10 Const
execute if score @s ModeSkill matches 51034 run scoreboard players operation $BlowPower Global *= $15 Const
scoreboard players operation $BlowPower Global /= $100 Const
scoreboard players operation $BlowPower Global += @s LightningBlow
scoreboard players operation @s LightningBlow += $BlowPower Global

###---演出---Start
###---演出---End
