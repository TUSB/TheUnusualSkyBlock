
###レベルダウン
###Add(Job)が0以外のもののみfunctionを呼び出す

execute store result score _ AddKnight run data get storage job: JobStatus[1].Level 1
execute store result score _ AddNinja run data get storage job: JobStatus[2].Level 1
execute store result score _ AddHunter run data get storage job: JobStatus[3].Level 1
execute store result score _ AddWhiteMage run data get storage job: JobStatus[4].Level 1
execute store result score _ AddBlackMage run data get storage job: JobStatus[5].Level 1
execute store result score _ AddSummoner run data get storage job: JobStatus[6].Level 1
execute store result score _ AddPuppetMaster run data get storage job: JobStatus[7].Level 1
execute store result score _ AddThief run data get storage job: JobStatus[8].Level 1

#レベルダウン
scoreboard players operation _ AddKnight -= @s AddKnight
scoreboard players operation _ AddNinja -= @s AddNinja
scoreboard players operation _ AddHunter -= @s AddHunter
scoreboard players operation _ AddWhiteMage -= @s AddWhiteMage
scoreboard players operation _ AddBlackMage -= @s AddBlackMage
scoreboard players operation _ AddSummoner -= @s AddSummoner
scoreboard players operation _ AddPuppetMaster -= @s AddPuppetMaster
scoreboard players operation _ AddThief -= @s AddThief

execute store result storage job: JobStatus[1].Level int 1 run scoreboard players get _ AddKnight
execute store result storage job: JobStatus[2].Level int 1 run scoreboard players get _ AddNinja
execute store result storage job: JobStatus[3].Level int 1 run scoreboard players get _ AddHunter
execute store result storage job: JobStatus[4].Level int 1 run scoreboard players get _ AddWhiteMage
execute store result storage job: JobStatus[5].Level int 1 run scoreboard players get _ AddBlackMage
execute store result storage job: JobStatus[6].Level int 1 run scoreboard players get _ AddSummoner
execute store result storage job: JobStatus[7].Level int 1 run scoreboard players get _ AddPuppetMaster
execute store result storage job: JobStatus[8].Level int 1 run scoreboard players get _ AddThief

##CPチェック
#一応セーブしておく
function job:status/save

#このfunction内ではステータスは常にリセットする職業のもの。スコアの@s Jobはなんでもよい
scoreboard players operation _ Job = @s Job

#リセット
# _ Job には潜在能力をリセットする職業の番号を入れる。最後まで変更禁止！
execute if score _ AddKnight matches 1..49 run scoreboard players set @s Job 1
execute unless score @s AddKnight matches 0 if score _ AddKnight matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddNinja matches 1..49 run scoreboard players set @s Job 2
execute unless score @s AddNinja matches 0 if score _ AddNinja matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddHunter matches 1..49 run scoreboard players set @s Job 3
execute unless score @s AddHunter matches 0 if score _ AddHunter matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddWhiteMage matches 1..49 run scoreboard players set @s Job 4
execute unless score @s AddWhiteMage matches 0 if score _ AddWhiteMage matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddBlackMage matches 1..49 run scoreboard players set @s Job 5
execute unless score @s AddBlackMage matches 0 if score _ AddBlackMage matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddSummoner matches 1..49 run scoreboard players set @s Job 6
execute unless score @s AddSummoner matches 0 if score _ AddSummoner matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddPuppetMaster matches 1..49 run scoreboard players set @s Job 7
execute unless score @s AddPuppetMaster matches 0 if score _ AddPuppetMaster matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddThief matches 1..49 run scoreboard players set @s Job 8
execute unless score @s AddThief matches 0 if score _ AddThief matches 1..49 run function job:potentials/common/reset/add_level/reset

##CPチェック
#超過分剥奪
# _ Add(Job) 系のスコアは最後まで変更禁止！
scoreboard players set @s Job 1
execute unless score @s AddKnight matches 0 if score _ AddKnight matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 2
execute unless score @s AddNinja matches 0 if score _ AddNinja matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 3
execute unless score @s AddHunter matches 0 if score _ AddHunter matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 4
execute unless score @s AddWhiteMage matches 0 if score _ AddWhiteMage matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 5
execute unless score @s AddBlackMage matches 0 if score _ AddBlackMage matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 6
execute unless score @s AddSummoner matches 0 if score _ AddSummoner matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 7
execute unless score @s AddPuppetMaster matches 0 if score _ AddPuppetMaster matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 8
execute unless score @s AddThief matches 0 if score _ AddThief matches 50.. run function job:potentials/common/reset/add_level/cp_check

#一応ロードしておく
scoreboard players operation @s Job = _ Job
function job:status/load
