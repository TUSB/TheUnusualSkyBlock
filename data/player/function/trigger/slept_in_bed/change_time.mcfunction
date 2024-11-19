#> player:trigger/slept_in_bed/change_time
#夜を司る島攻略済みチェック
execute unless data storage area: capture.skylands{011:1} run return fail
#時間を朝にする
scoreboard players set _ _ 1
execute as @a at @s unless block ~ ~ ~ #beds run scoreboard players set _ _ 0
execute if score _ _ matches 1 run time set 0
