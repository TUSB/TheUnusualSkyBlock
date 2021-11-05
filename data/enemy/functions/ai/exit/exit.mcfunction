#CallOnExitあれば実行
execute if data storage mob_data: CallList[{CallOnExit:1b}] run function enemy:ai/skill/call
#次のTurnへ
data modify storage mob_data: AI.Turn append from storage mob_data: AI.Turn[0]
data remove storage mob_data: AI.Turn[0]
