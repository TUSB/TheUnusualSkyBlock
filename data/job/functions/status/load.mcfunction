
###ステータスをロードする
###ステータスの上書き注意！

function job:status/call

#もし空のステータスを読み込もうとしたならリセットする。
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP run function job:status/reset

#すでにcallでステータスは呼び出されているのでそのままロード処理をしてもよい
#ロードする

execute store result score @s Level run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].Level 1
execute store result score @s Exp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].Exp 1
execute store result score @s SubLevel run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.SubLevel 1
execute store result score @s CritProbability run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.CritProbability 1
execute store result score @s ResistMin run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.ResistMin 1
execute store result score @s AuraRate run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AuraRate 1
execute store result score @s ntervalRate run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.ntervalRate 1
execute store result score @s MPCostRate run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.MPCostRate 1
execute store result score @s AddKnight run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[1] 1
execute store result score @s AddNinja run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[2] 1
execute store result score @s AddHunter run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[3] 1
execute store result score @s AddWhite_mage run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[4] 1
execute store result score @s AddBlack_mage run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[5] 1
execute store result score @s AddSummoner run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[6] 1
execute store result score @s AddPuppet_master run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[7] 1
execute store result score @s AddThief run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[8] 1

# 必要経験値計算
scoreboard players operation @s _ = @s Level
scoreboard players set _ _ 50
scoreboard players operation @s _ < _ _
scoreboard players operation @s RequiredExp = @s _
scoreboard players set _ _ 10
scoreboard players operation @s RequiredExp /= _ _
scoreboard players add @s RequiredExp 5
scoreboard players operation @s RequiredExp *= @s _
