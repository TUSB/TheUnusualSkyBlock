##############################
### クエスト報告確認反応時共通処理
##############################

###報告するか
execute if entity @s[scores={QuestReport=1}] run function quest_manager:main/check_done

###終了処理
scoreboard players set @s QuestReport 0

###---演出---Start
playsound ui.button.click master @s
###---演出---End
