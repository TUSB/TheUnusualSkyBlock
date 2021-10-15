#条件フラグをリセット
scoreboard players set _ Calc 0

data modify storage mob_data: Condition set from storage mob_data: Call.Condition[0]
data remove storage mob_data: Call.Condition[0]

#条件フラグ
function enemy:ai/call/condition/

#Notフラグ
execute store success score _ _ if data storage mob_data: Condition{Inverse:1b}

# 成功時次のConditionを試す。
scoreboard players operation _ Calc += _ _
execute if score _ Calc matches 1 if data storage mob_data: Call.Condition[0] run function enemy:ai/call/condition/and

#失敗時スキルを実行するフラグを落とす
execute unless score _ Calc matches 1 run scoreboard players set _ Ret 0
#全て成功時スキルを実行するフラグを立てる
execute if score _ Calc matches 1 unless data storage mob_data: Call.Condition[0] run scoreboard players set _ Ret 1
