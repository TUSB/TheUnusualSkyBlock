##############################
### ダークスワンプMP計算(Level2)
##############################

execute store result score $DarkSwampOne DarkSwamp run data get entity @s AbsorptionAmount
scoreboard players operation $DarkSwampOne DarkSwamp /= $34 Const
scoreboard players operation $DarkSwampTotal DarkSwamp += $DarkSwampOne DarkSwamp
scoreboard players operation @s Damage += $DarkSwampOne DarkSwamp
