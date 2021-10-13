#現在のTurnを除くランダムなTurnに変える
execute store result score _ Calc run function calc:random
execute store result score _ _ if data storage mob_data: AI.Turn[]
scoreboard players remove _ _ 1
scoreboard players operation _ Calc %= _ _
execute store result storage mob_data: AI.Turn[0].Exit.ChangeTurn int 1 run scoreboard players add _ Calc 1
