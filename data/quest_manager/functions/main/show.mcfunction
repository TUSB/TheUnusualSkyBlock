##############################
### クエスト一覧表示処理
##############################

###各種処理
tellraw @s ["",{"text":"<発生中のクエスト>"}]

###各クエストごとに表示
execute if score $1 QuestState matches 1 run function quest_manager:quest/1_test/list



###各種処理
execute if entity @s[tag=QuestHappen] run function quest_manager:main/any_happen
tellraw @s[tag=!QuestHappen] ["",{"text":"現在発生中のクエストはありません。"}]
tag @s[tag=QuestHappen] remove QuestHappen

###---演出---Start

###---演出---End
