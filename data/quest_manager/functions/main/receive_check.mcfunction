##############################
### クエスト受注確認時共通処理
##############################

###受注上限でないか確認
execute if score @s Quest5 matches 1.. run function quest_manager:main/full

###---演出---Start
execute if entity @s[tag=!CantReceive] run playsound ui.button.click master @s
###---演出---End
