#> debug:job/all_job_100
###全職業100Lv
###デバッグ用

function job:status/operation_start

function job:status/save

scoreboard players set @s Job 1
function job:status/reset
scoreboard players set @s Job 2
function job:status/reset
scoreboard players set @s Job 3
function job:status/reset
scoreboard players set @s Job 4
function job:status/reset
scoreboard players set @s Job 5
function job:status/reset
scoreboard players set @s Job 6
function job:status/reset
scoreboard players set @s Job 7
function job:status/reset
scoreboard players set @s Job 8
function job:status/reset

data modify storage job: JobStatus[1].Level set value 100
data modify storage job: JobStatus[2].Level set value 100
data modify storage job: JobStatus[3].Level set value 100
data modify storage job: JobStatus[4].Level set value 100
data modify storage job: JobStatus[5].Level set value 100
data modify storage job: JobStatus[6].Level set value 100
data modify storage job: JobStatus[7].Level set value 100
data modify storage job: JobStatus[8].Level set value 100

scoreboard players set @s Job 0
function job:status/load

#スキルレベル更新
function job:status/get_all_job_level

function job:status/operation_end
