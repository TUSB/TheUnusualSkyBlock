#TurnをLoop回進める
function enemy:ai/exit/exit
execute store result storage mob_data: AI.Turn[0].Exit.ChangeTurn int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.ChangeTurn
execute if data storage mob_data: AI.Turn[0].Exit{ChangeTurn:0} run data remove storage mob_data: AI.Turn[0].Exit.ChangeTurn
execute unless data storage mob_data: AI.Turn[0].Exit{ChangeTurn:0} run function skill:enemy/change_turn/loop
