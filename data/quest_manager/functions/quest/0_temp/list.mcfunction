##############################
### クエスト一覧表示用処理
##############################

###メッセージ表示
execute if entity @s[tag=!Quest1_Ongoing] run tellraw @s ["",{"text":"■","color":"aqua"},{"text":"テスト","hoverEvent":{"action":"show_text","value":["",{"text":"クエスト名：テスト\n説明：医師「どうしても石が欲しい！ｗ」←強い意志\n達成条件：石を64個納品する"}]},"clickEvent":{"action":"run_command","value":"/trigger QuestClick set 1"}}]
execute if entity @s[tag=Quest1_Ongoing] run tellraw @s ["",{"text":"■","color":"green"},{"text":"テスト","hoverEvent":{"action":"show_text","value":["",{"text":"クエスト名：テスト\n説明：医師「どうしても石が欲しい！ｗ」←強い意志\n達成条件：石を64個納品する"}]},"clickEvent":{"action":"run_command","value":"/trigger QuestClick set 1"}}]


###一つでも発生しているか検知用tag
tag @s[tag=!QuestHappen] add QuestHappen
