#OR条件

# Condition[0]を試す
function enemy:ai/call/condition/logic/single

#失敗時次のConditionを試す。
execute unless score _ Calc matches 1 if data storage mob_data: Call.Condition[0] run function enemy:ai/call/condition/logic/or

#全て失敗時スキルを実行するフラグを落とす
execute unless score _ Calc matches 1 unless data storage mob_data: Call.Condition[0] run scoreboard players set _ Ret 0
#成功時スキルを実行するフラグを立てる
execute if score _ Calc matches 1 run scoreboard players set _ Ret 1
