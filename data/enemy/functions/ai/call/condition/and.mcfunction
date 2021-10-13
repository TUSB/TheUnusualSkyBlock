#条件フラグをリセット
scoreboard players set _ Calc 0

data modify storage mob_data: Condition set from storage mob_data: Call.Condition[0]
data remove storage mob_data: Call.Condition[0]

#条件フラグ
function enemy:ai/call/condition/

#Notフラグ
execute store success score _ _ if data storage mob_data: Condition{Inverse:1b}

# Conditionが空になりすべて成功時に実行
execute if score _ Calc matches 1 if score _ _ matches 0 unless data storage mob_data: Call.Condition[0] run function enemy:ai/call/call
execute if score _ Calc matches 0 if score _ _ matches 1 unless data storage mob_data: Call.Condition[0] run function enemy:ai/call/call

# 成功時次のConditionを試す。
execute if score _ Calc matches 0 if score _ _ matches 1 if data storage mob_data: Call.Condition[0] run function enemy:ai/call/condition/and
execute if score _ Calc matches 1 if score _ _ matches 0 if data storage mob_data: Call.Condition[0] run function enemy:ai/call/condition/and
