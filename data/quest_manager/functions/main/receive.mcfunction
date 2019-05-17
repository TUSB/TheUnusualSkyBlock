##############################
### クエスト受注時共通処理
##############################

###受注する
scoreboard players operation @s Global = @s QuestReceiveID
function quest_manager:main/function/add_number

###各クエストごとの受注時処理
function quest_manager:quest/1_first/receive

###---演出---Start
playsound entity.experience_orb.pickup master @s
###---演出---End