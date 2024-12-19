#> job:status/save
###ステータスをセーブする

# 現在のJobのステータスを呼び出す
function job:status/call

# セーブする

execute store result storage job: JobStatus[-9].Level int 1 run scoreboard players get @s Level
execute store result storage job: JobStatus[-9].Exp int 1 run scoreboard players get @s Exp
