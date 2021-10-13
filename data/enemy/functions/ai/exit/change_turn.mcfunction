#TurnをLoop回進める
execute store result storage mob_data: AI.Turn[0].Exit.ChangeTurn int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.ChangeTurn
execute unless data storage mob_data: AI.Turn[0].Exit{ChangeTurn:0} run function enemy:ai/exit/change_turn
data remove storage mob_data: AI.Turn[0].Exit.ChangeTurn
function enemy:ai/exit/exit
