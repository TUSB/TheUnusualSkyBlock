##############################
### クエスト報告確認反応時状況確認用処理
##############################

###条件を満たしているか
execute if score @s QuestReportID matches 1 run function quest_manager:quest/1_test/check_done

###条件を満たしていれば達成 達成していた場合
execute if entity @s[tag=!QuestDone] run tellraw @s {"text":"条件を達成できていないようです。","color":"red"}
execute if entity @s[tag=QuestDone] run function quest_manager:main/done
