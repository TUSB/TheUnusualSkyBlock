##############################
### bigflagを右に循環シフト
##############################

scoreboard players operation $Carry Global = $BitFlags Global
scoreboard players operation $Carry Global %= $2 Const

scoreboard players operation $BitFlags Global /= $2 Const
execute if score $BitFlags Global matches ..-1 run scoreboard players operation $BitFlags Global += $IntMin Const

execute if score $Carry Global matches 1 run scoreboard players operation $BitFlags Global += $IntMin Const
