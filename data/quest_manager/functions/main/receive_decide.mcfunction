##############################
### クエスト受注確認反応時共通処理
##############################

###受注するか
execute if entity @s[scores={QuestReceive=1}] run function quest_manager:main/receive

###終了処理
scoreboard players set @s QuestReceive 0
