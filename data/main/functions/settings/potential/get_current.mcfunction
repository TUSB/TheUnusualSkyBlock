##############################
### 潜在能力残りポイント計算
##############################

scoreboard players operation $Potential1 Global = @s Potential1
scoreboard players operation $Potential2 Global = @s Potential2
scoreboard players set $CurrentPoint Global 0

### １消費系
scoreboard players operation $OnePotential Global = $Potential1 Global
scoreboard players operation $OnePotential Global %= $51 Const
scoreboard players operation $Potential1 Global /= $51 Const
scoreboard players operation $CurrentPoint Global += $OnePotential Global

scoreboard players operation $OnePotential Global = $Potential1 Global
scoreboard players operation $OnePotential Global %= $51 Const
scoreboard players operation $Potential1 Global /= $51 Const
scoreboard players operation $CurrentPoint Global += $OnePotential Global

scoreboard players operation $OnePotential Global = $Potential1 Global
scoreboard players operation $OnePotential Global %= $51 Const
scoreboard players operation $Potential1 Global /= $51 Const
scoreboard players operation $CurrentPoint Global += $OnePotential Global

scoreboard players operation $OnePotential Global = $Potential1 Global
scoreboard players operation $OnePotential Global %= $51 Const
scoreboard players operation $Potential1 Global /= $51 Const
scoreboard players operation $CurrentPoint Global += $OnePotential Global

### ２消費系
scoreboard players operation $OnePotential Global = $Potential2 Global
scoreboard players operation $OnePotential Global %= $26 Const
scoreboard players operation $Potential2 Global /= $26 Const
scoreboard players operation $OnePotential Global *= $2 Const
scoreboard players operation $CurrentPoint Global += $OnePotential Global

scoreboard players operation $OnePotential Global = $Potential2 Global
scoreboard players operation $OnePotential Global %= $26 Const
scoreboard players operation $Potential2 Global /= $26 Const
scoreboard players operation $OnePotential Global *= $2 Const
scoreboard players operation $CurrentPoint Global += $OnePotential Global
