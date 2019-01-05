##############################
### クエスト受注確認処理
##############################

###受注しようとしているクエストを更新
scoreboard players set @s QuestReceiveID 1

###トリガー有効化
scoreboard players set @s QuestReceive 0
scoreboard players enable @s QuestReceive

###メッセージ表示
tellraw @s ["",{"text":"「テスト」を受注しますか？ "},{"text":"[はい]","clickEvent":{"action":"run_command","value":"/trigger QuestReceive set 1"}},{"text":"[いいえ]","clickEvent":{"action":"run_command","value":"/trigger QuestReceive set 2"}}]
