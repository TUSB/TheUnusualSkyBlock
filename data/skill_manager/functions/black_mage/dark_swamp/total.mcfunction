##############################
### ダークスワンプMP計算&ダメージ
##############################

execute store result score $DarkSwampOne DarkSwamp run data get entity @s AbsorptionAmount
scoreboard players operation $DarkSwampOne DarkSwamp /= $AbsorbRate Global
scoreboard players operation $DarkSwampTotal DarkSwamp += $DarkSwampOne DarkSwamp
scoreboard players operation @s Damage += $DarkSwampOne DarkSwamp
