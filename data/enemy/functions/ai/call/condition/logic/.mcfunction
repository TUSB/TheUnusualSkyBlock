
# OR,AND未指定の場合ANDにする
execute unless data storage mob_data: Call.Condition[].Logic run data modify storage mob_data: Call.Condition[0].Logic set value "AND"

# OR,ANDに分岐
execute if data storage mob_data: Call.Condition[{Logic:"OR"}] run function enemy:ai/call/condition/logic/or
execute if data storage mob_data: Call.Condition[{Logic:"AND"}] run function enemy:ai/call/condition/logic/and

#スキルを実行するフラグが立っていればスキル実行
scoreboard players get _ Ret
