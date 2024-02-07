##ChangeTurn : 0 のときだけ例外処理
execute if data storage mob_data: AI{ChangeTurn:0} run data modify storage mob_data: Exit set value 1b
execute unless data storage mob_data: AI{ChangeTurn:0} run function enemy:ai/exit/change_turn/loop
data remove storage mob_data: AI.Turn[].Exit.ChangeTurn