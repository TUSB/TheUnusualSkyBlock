
#OhMyDat登録
function #oh_my_dat:please

execute unless data storage main: difficult{world:"debug"} run function player:rise/none_spawn_point

#各種初期化
data modify storage job: JobStatus set value [{},{},{},{},{},{},{},{},{}]
scoreboard players set @s Job 0
function job:status/load
function job:status/operation_end

scoreboard players set @s AllExp 0

function job:level_up/
function job:status/get_all_job_level

team join Friendly

#スキルショートカット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut set value [{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"}]
