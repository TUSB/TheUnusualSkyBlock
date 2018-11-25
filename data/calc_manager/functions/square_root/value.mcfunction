##############################
### 平方根の１０００倍を返す
##############################

scoreboard players operation $Next Global = $Input Global
scoreboard players operation $Next Global *= $1000 Const
scoreboard players operation $Target Global = $Input Global
scoreboard players operation $Target Global *= $1000000 Const

function calc_manager:square_root/loop

scoreboard players operation $Output Global = $Next Global
execute if score $Output Global matches 1001.. run scoreboard players remove $Output Global 1
