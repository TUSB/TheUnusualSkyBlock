
#OhMyDat登録
function oh_my_dat:please

#各種初期化
data modify storage job: JobStatus set value [{},{},{},{},{},{},{},{},{}]
scoreboard players set @s Job 0
function job:status/load
function job:status/operation_end

scoreboard players set @s AllExp 0

function job:level_up/
