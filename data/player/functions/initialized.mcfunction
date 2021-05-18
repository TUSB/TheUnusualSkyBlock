
#OhMyDat登録
function oh_my_dat:please

#各種初期化
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus set value [{},{},{},{},{},{},{},{},{}]
scoreboard players set @s Job 0
function job:status/load

scoreboard players set @s AllExp 0

function job:level_up/
