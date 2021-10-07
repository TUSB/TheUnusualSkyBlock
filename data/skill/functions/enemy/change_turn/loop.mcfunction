#TurnをLoop回進める
function enemy:ai/exit/exit
execute store result storage mob_data: Call.Loop int 0.99999 run data get storage mob_data: Call.Loop
execute unless data storage mob_data: Call{Loop:0} run function skill:enemy/change_turn/loop
