##############################
### バースト新規値取得
##############################


function calc_manager:update_random

### If Prev = 3
### 0 - 7
scoreboard players operation $Random Global %= $8 Const
### 3 - 10
scoreboard players operation $Random Global += $PreviousNumber Global
### 3 - 8 0 - 1
scoreboard players operation $Random Global %= $9 Const
### 4 - 9 1 - 2
scoreboard players add $Random Global 1

scoreboard players operation @s BurstCommand *= $10 Const
scoreboard players operation @s BurstCommand += $Random Global

scoreboard players operation $PreviousNumber Global = $Random Global

scoreboard players remove $LoopCount Global 1

execute if score $LoopCount Global matches 0.. run function skill_manager:burst/get_command
