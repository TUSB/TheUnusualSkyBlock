#CallOnExitあれば実行
execute if data storage mob_data: CallList[{CallOnExit:1b}] run function enemy:ai/skill/call
#Once=0でなければ次のリストへ
execute unless data storage mob_data: AI.ChangeTurn if data storage mob_data: AI.Turn[0].Once store result storage mob_data: AI.Turn[0].Once int 0.99999 run data get storage mob_data: AI.Turn[0].Once
execute unless data storage mob_data: AI.Turn[{Once:0}] run data modify storage mob_data: AI.Turn append from storage mob_data: AI.Turn[0]
data remove storage mob_data: AI.Turn[0]
