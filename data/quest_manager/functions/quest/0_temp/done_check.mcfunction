##############################
### クエスト報告確認処理
##############################

###報告しようとしているクエストを更新
scoreboard players set @s QuestReportID 1

###トリガー有効化
scoreboard players set @s QuestReport 0
scoreboard players enable @s QuestReport

###メッセージ表示
tellraw @s ["",{"text":"「テスト」を報告しますか？ "},{"text":"[はい]","clickEvent":{"action":"run_command","value":"/trigger QuestReport set 1"}},{"text":"[いいえ]","clickEvent":{"action":"run_command","value":"/trigger QuestReport set 2"}}]
