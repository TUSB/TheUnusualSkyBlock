#TurnをLoop回進める
execute store result storage mob_data: AI.ChangeTurn int 0.99999 run data get storage mob_data: AI.ChangeTurn
function enemy:ai/exit/exit
execute unless data storage mob_data: AI{ChangeTurn:0} run function enemy:ai/exit/change_turn/loop