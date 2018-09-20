##############################
### クエスト報告時共通処理
##############################

###報告する
scoreboard players operation @s Global = @s QuestReportID
function quest_manager:main/function/delete_number

###各クエストごとの報告時処理
function quest_manager:quest/1_test/done

###---演出---Start
playsound ui.button.click master @s
###---演出---End