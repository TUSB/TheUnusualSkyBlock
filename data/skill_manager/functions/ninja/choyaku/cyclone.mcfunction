##############################
### 跳躍ダメージ
##############################

scoreboard players operation $Damage Global = @s Choyaku
scoreboard players operation $Damage Global *= $Damage Global
scoreboard players operation $Damage Global *= $50 Const

scoreboard players operation @e[distance=..5,tag=Mob] Damage += $Damage Global

###---演出---Start

###---演出---End
