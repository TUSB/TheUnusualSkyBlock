
#OhMyDat登録
function #oh_my_dat:please

#各種初期化
data modify storage job: JobStatus set value [{},{},{},{},{},{},{},{},{}]
scoreboard players set @s Job 0
function job:status/load
function job:status/operation_end

scoreboard players set @s AllExp 0

function job:level_up/
function job:status/get_all_job_level

execute unless data storage main: difficult{world:"debug"} run function player:rise/none_spawn_point

team join Friendly

#スキルショートカット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut set value [{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"}]

# バースト必要値 更新
bossbar set skill:burst players @a
execute store result score _ _ if entity @a
scoreboard players remove _ _ 1
scoreboard players add _ _ 10
scoreboard players set _ Calc 30
execute store result bossbar skill:burst max run scoreboard players operation _ _ *= _ Calc

function skill:burst/bossbar
