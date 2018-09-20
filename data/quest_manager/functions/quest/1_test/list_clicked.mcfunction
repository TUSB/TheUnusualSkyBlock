##############################
### クエスト一覧クリック時処理
##############################

###進行中
execute if entity @s[tag=Quest1_Ongoing] run function quest_manager:main/done_check
execute if entity @s[tag=Quest1_Ongoing] run function quest_manager:quest/1_test/show_progress
execute if entity @s[tag=Quest1_Ongoing] run function quest_manager:quest/1_test/check_done
execute if entity @s[tag=Quest1_Ongoing,tag=QuestDone] run function quest_manager:quest/1_test/done_check
execute if entity @s[tag=QuestDone] run tag @s remove QuestDone

###未受注
execute if entity @s[tag=!Quest1_Ongoing] run function quest_manager:main/receive_check
execute if entity @s[tag=!Quest1_Ongoing,tag=!CantReceive] run function quest_manager:quest/1_test/receive_check
