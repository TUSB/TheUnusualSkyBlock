#条件フラグをリセット
scoreboard players set _ Calc 0
#Notフラグ
execute store success score _ _ if data storage mob_data: Call.Condition{Inverse:1b}
#条件フラグ
execute if data storage mob_data: Call.Condition{Name:"HasTarget"} run function enemy:ai/call/condition/target
#実行
execute if score _ Calc matches 1 if score _ _ matches 0 run function enemy:ai/call/call
execute if score _ Calc matches 0 if score _ _ matches 1 run function enemy:ai/call/call
