##############################
### クエスト一覧表示用処理
##############################

###メッセージ表示
execute if entity @s[tag=!Quest1_Ongoing] run tellraw @s ["",{"text":"■","color":"aqua"},{"text":"はじめてのクエスト","hoverEvent":{"action":"show_text","value":["",{"text":"はじめてのクエスト\n","bold":true},{"text":"説明：クエストを受注してみよう！\n達成条件：なし"}]},"clickEvent":{"action":"run_command","value":"/trigger QuestClick set 1"}}]
execute if entity @s[tag=Quest1_Ongoing] run tellraw @s ["",{"text":"■","color":"green"},{"text":"はじめてのクエスト","hoverEvent":{"action":"show_text","value":["",{"text":"はじめてのクエスト\n","bold":true},{"text":"説明：クエストを受注してみよう！\n達成条件：なし"}]},"clickEvent":{"action":"run_command","value":"/trigger QuestClick set 1"}}]


###一つでも発生しているか検知用tag
tag @s[tag=!QuestHappen] add QuestHappen
