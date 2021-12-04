#AND条件

# Condition[0]を試す
function enemy:ai/call/condition/logic/single

# 成功時次のConditionを試す。
execute if score _ Calc matches 1 if data storage mob_data: Call.Condition[0] run function enemy:ai/call/condition/logic/and

#失敗時スキルを実行するフラグを落とす
execute unless score _ Calc matches 1 run scoreboard players set _ Ret 0
#全て成功時スキルを実行するフラグを立てる
execute if score _ Calc matches 1 unless data storage mob_data: Call.Condition[0] run scoreboard players set _ Ret 1
