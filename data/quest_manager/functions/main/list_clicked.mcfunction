##############################
### クエスト一覧クリック時処理
##############################

###クエスト状況確認
execute if score @s QuestClick matches 1 run function quest_manager:quest/1_first/list_clicked

###終了処理
tag @s[tag=CantReceive] remove CantReceive
scoreboard players set @s QuestClick 0