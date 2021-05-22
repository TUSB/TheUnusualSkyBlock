
###レベルダウン
###Add(Job)が0以外のもののみfunctionを呼び出す

#プレイヤーのステータス群呼び出し
function oh_my_dat:please

execute store result score _ AddKnight run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[1].Level 1
execute store result score _ AddNinja run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[2].Level 1
execute store result score _ AddHunter run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[3].Level 1
execute store result score _ AddWhite_mage run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[4].Level 1
execute store result score _ AddBlack_mage run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[5].Level 1
execute store result score _ AddSummoner run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[6].Level 1
execute store result score _ AddPuppet_master run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[7].Level 1
execute store result score _ AddThief run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[8].Level 1

#レベルダウン
scoreboard players operation _ AddKnight -= @s AddKnight
scoreboard players operation _ AddNinja -= @s AddNinja
scoreboard players operation _ AddHunter -= @s AddHunter
scoreboard players operation _ AddWhite_mage -= @s AddWhite_mage
scoreboard players operation _ AddBlack_mage -= @s AddBlack_mage
scoreboard players operation _ AddSummoner -= @s AddSummoner
scoreboard players operation _ AddPuppet_master -= @s AddPuppet_master
scoreboard players operation _ AddThief -= @s AddThief

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[1].Level int 1 run scoreboard players get _ AddKnight
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[2].Level int 1 run scoreboard players get _ AddNinja
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[3].Level int 1 run scoreboard players get _ AddHunter
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[4].Level int 1 run scoreboard players get _ AddWhite_mage
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[5].Level int 1 run scoreboard players get _ AddBlack_mage
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[6].Level int 1 run scoreboard players get _ AddSummoner
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[7].Level int 1 run scoreboard players get _ AddPuppet_master
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[8].Level int 1 run scoreboard players get _ AddThief

##CPチェック
#一応セーブしておく
function job:status/save

#このfunction内ではステータス常にはリセットする職業のもの。スコアの@s Jobはなんでもよい
scoreboard players operation _ Job = @s Job

#リセット
# _ Job には潜在能力をリセットする職業の番号を入れる。最後まで変更禁止！
execute if score _ AddKnight matches 1..49 run scoreboard players set @s Job 1
execute unless score @s AddKnight matches 0 if score _ AddKnight matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddNinja matches 1..49 run scoreboard players set @s Job 2
execute unless score @s AddNinja matches 0 if score _ AddNinja matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddHunter matches 1..49 run scoreboard players set @s Job 3
execute unless score @s AddHunter matches 0 if score _ AddHunter matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddWhite_mage matches 1..49 run scoreboard players set @s Job 4
execute unless score @s AddWhite_mage matches 0 if score _ AddWhite_mage matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddBlack_mage matches 1..49 run scoreboard players set @s Job 5
execute unless score @s AddBlack_mage matches 0 if score _ AddBlack_mage matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddSummoner matches 1..49 run scoreboard players set @s Job 6
execute unless score @s AddSummoner matches 0 if score _ AddSummoner matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ AddPuppet_master matches 1..49 run scoreboard players set @s Job 7
execute unless score @s AddPuppet_master matches 0 if score _ AddPuppet_master matches 1..49 run function job:potentials/common/reset/add_level/reset
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
execute unless score @s AddWhite_mage matches 0 if score _ AddWhite_mage matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 5
execute unless score @s AddBlack_mage matches 0 if score _ AddBlack_mage matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 6
execute unless score @s AddSummoner matches 0 if score _ AddSummoner matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 7
execute unless score @s AddPuppet_master matches 0 if score _ AddPuppet_master matches 50.. run function job:potentials/common/reset/add_level/cp_check
scoreboard players set @s Job 8
execute unless score @s AddThief matches 0 if score _ AddThief matches 50.. run function job:potentials/common/reset/add_level/cp_check

#一応ロードしておく
scoreboard players operation @s Job = _ Job
function job:status/load
