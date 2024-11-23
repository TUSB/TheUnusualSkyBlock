#> job:status/save
###ステータスをセーブする

# 現在のJobのステータスを呼び出す
function job:status/call

# セーブする

execute store result storage job: JobStatus[-9].Level int 1 run scoreboard players get @s Level
execute store result storage job: JobStatus[-9].Exp int 1 run scoreboard players get @s Exp
execute store result storage job: JobStatus[-9].CP.SubLevel int 1 run scoreboard players get @s SubLevel
execute store result storage job: JobStatus[-9].CP.ElementDamageAdd int 1 run scoreboard players get @s ElementDamageAdd
execute store result storage job: JobStatus[-9].CP.ResistMin int 1 run scoreboard players get @s ResistMin
execute store result storage job: JobStatus[-9].CP.AuraRate int 1 run scoreboard players get @s AuraRate
execute store result storage job: JobStatus[-9].CP.IntervalRate int 1 run scoreboard players get @s IntervalRate
execute store result storage job: JobStatus[-9].CP.MPCostRate int 1 run scoreboard players get @s MPCostRate
