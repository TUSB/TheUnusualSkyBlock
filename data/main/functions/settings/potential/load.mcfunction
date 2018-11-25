##############################
### 潜在能力読み込み
##############################

### 読み込み
execute if score @s Job matches 1 run scoreboard players operation $Potential1 Global = @s Potential1Knight
execute if score @s Job matches 2 run scoreboard players operation $Potential1 Global = @s Potential1Ninja
execute if score @s Job matches 3 run scoreboard players operation $Potential1 Global = @s Potential1Hunter
execute if score @s Job matches 4 run scoreboard players operation $Potential1 Global = @s Potential1White
execute if score @s Job matches 5 run scoreboard players operation $Potential1 Global = @s Potential1Black
execute if score @s Job matches 6 run scoreboard players operation $Potential1 Global = @s Potential1Summon
execute if score @s Job matches 7 run scoreboard players operation $Potential1 Global = @s Potential1Pupper
scoreboard players operation @s Potential1 = $Potential1 Global

execute if score @s Job matches 1 run scoreboard players operation $Potential2 Global = @s Potential2Knight
execute if score @s Job matches 2 run scoreboard players operation $Potential2 Global = @s Potential2Ninja
execute if score @s Job matches 3 run scoreboard players operation $Potential2 Global = @s Potential2Hunter
execute if score @s Job matches 4 run scoreboard players operation $Potential2 Global = @s Potential2White
execute if score @s Job matches 5 run scoreboard players operation $Potential2 Global = @s Potential2Black
execute if score @s Job matches 6 run scoreboard players operation $Potential2 Global = @s Potential2Summon
execute if score @s Job matches 7 run scoreboard players operation $Potential2 Global = @s Potential2Pupper
scoreboard players operation @s Potential2 = $Potential2 Global

### ２消費系
scoreboard players operation @s SubLevel = $Potential2 Global
scoreboard players operation @s SubLevel %= $26 Const
scoreboard players operation $Potential2 Global /= $26 Global

scoreboard players operation @s CritProbability = $Potential2 Global
scoreboard players operation @s CritProbability %= $26 Const

### １消費系
scoreboard players operation @s ResistMin = $Potential1 Global
scoreboard players operation @s ResistMin %= $51 Const
scoreboard players operation $Potential2 Global /= $51 Global

scoreboard players operation @s AuraRate = $Potential1 Global
scoreboard players operation @s AuraRate %= $51 Const
scoreboard players operation $Potential2 Global /= $51 Global

scoreboard players operation @s IntervalRate = $Potential1 Global
scoreboard players operation @s IntervalRate %= $51 Const
scoreboard players operation $Potential2 Global /= $51 Global

scoreboard players operation @s MPCostRate = $Potential1 Global
scoreboard players operation @s MPCostRate %= $51 Const

### 標準補正
scoreboard players add @s CritProbability 10

scoreboard players add @s AuraRate 100

scoreboard players remove @s IntervalRate 100
scoreboard players operation @s IntervalRate *= $-1 Const

scoreboard players remove @s MPCostRate 100
scoreboard players operation @s MPCostRate *= $-1 Const

### 読み込みないけど設定
scoreboard players set @s CritRate 120
