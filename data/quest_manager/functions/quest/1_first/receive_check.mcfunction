##############################
### クエスト受注確認処理
##############################

###受注しようとしているクエストを更新
scoreboard players set @s QuestReceiveID 1

###トリガー有効化
scoreboard players set @s QuestReceive 0
scoreboard players enable @s QuestReceive

###メッセージ表示
tellraw @s ["",{"text":"「"},{"text":"はじめてのクエスト","hoverEvent":{"action":"show_text","value":["",{"text":"はじめてのクエスト\n","bold":true},{"text":"説明：クエストを受注してみよう！\n達成条件：なし"}]}},{"text":"」を受注しますか？ "},{"text":"[はい]","clickEvent":{"action":"run_command","value":"/trigger QuestReceive set 1"}},{"text":"[いいえ]","clickEvent":{"action":"run_command","value":"/trigger QuestReceive set 2"}}]
