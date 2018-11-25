##############################
### 潜在能力保存
##############################

### １消費系
scoreboard players set $OnePotential Global 100
scoreboard players operation $OnePotential Global -= @s MPCostRate
scoreboard players operation $Potential1 Global = $OnePotential Global
scoreboard players operation $Potential1 Global *= $51 Const

scoreboard players set $OnePotential Global 100
scoreboard players operation $OnePotential Global -= @s IntervalRate
scoreboard players operation $Potential1 Global += $OnePotential Global
scoreboard players operation $Potential1 Global *= $51 Const

scoreboard players operation $OnePotential Global = @s AuraRate
scoreboard players remove $OnePotential Global 100
scoreboard players operation $Potential1 Global += $OnePotential Global
scoreboard players operation $Potential1 Global *= $51 Const

scoreboard players operation $Potential1 Global += @s ResistMin

### ２消費系
scoreboard players operation $OnePotential Global = @s CritProbability
scoreboard players remove $OnePotential Global 10
scoreboard players operation $Potential2 Global = $OnePotential Global
scoreboard players operation $Potential2 Global *= $26 Const

scoreboard players operation $Potential2 Global += @s SubLevel

### 保存
scoreboard players operation @s Potential1 = $Potential1 Global
execute if score @s Job matches 1 run scoreboard players operation @s Potential1Knight = $Potential1 Global
execute if score @s Job matches 2 run scoreboard players operation @s Potential1Ninja = $Potential1 Global
execute if score @s Job matches 3 run scoreboard players operation @s Potential1Hunter = $Potential1 Global
execute if score @s Job matches 4 run scoreboard players operation @s Potential1White = $Potential1 Global
execute if score @s Job matches 5 run scoreboard players operation @s Potential1Black = $Potential1 Global
execute if score @s Job matches 6 run scoreboard players operation @s Potential1Summon = $Potential1 Global
execute if score @s Job matches 7 run scoreboard players operation @s Potential1Pupper = $Potential1 Global

scoreboard players operation @s Potential2 = $Potential2 Global
execute if score @s Job matches 1 run scoreboard players operation @s Potential2Knight = $Potential2 Global
execute if score @s Job matches 2 run scoreboard players operation @s Potential2Ninja = $Potential2 Global
execute if score @s Job matches 3 run scoreboard players operation @s Potential2Hunter = $Potential2 Global
execute if score @s Job matches 4 run scoreboard players operation @s Potential2White = $Potential2 Global
execute if score @s Job matches 5 run scoreboard players operation @s Potential2Black = $Potential2 Global
execute if score @s Job matches 6 run scoreboard players operation @s Potential2Summon = $Potential2 Global
execute if score @s Job matches 7 run scoreboard players operation @s Potential2Pupper = $Potential2 Global

