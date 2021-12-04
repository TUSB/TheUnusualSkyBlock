#条件フラグをリセット
scoreboard players set _ Calc 0

data modify storage mob_data: Condition set from storage mob_data: Call.Condition[0]
data remove storage mob_data: Call.Condition[0]

#条件フラグ
function enemy:ai/call/condition/condition/

#Notフラグ
execute store success score _ _ if data storage mob_data: Condition{Inverse:1b}
scoreboard players operation _ Calc += _ _

# グローバルコンディション
execute if data storage mob_data: Condition{Global:1b} if score _ Calc matches 1 run data modify storage mob_data: CallList[].Condition append value {Name:"Pass",Pass:1b}
execute if data storage mob_data: Condition{Global:1b} if score _ Calc matches 0 run data modify storage mob_data: CallList[].Condition append value {Name:"Pass",Pass:0b}
