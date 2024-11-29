#> job:status/load
###ステータスをロードする
###ステータスの上書き注意！

function job:status/call

#もし空のステータスを読み込もうとしたならリセットする。
execute unless data storage job: JobStatus[-9].CP run function job:status/reset

#すでにcallでステータスは呼び出されているのでそのままロード処理をしてもよい
#ロードする

execute store result score @s Level run data get storage job: JobStatus[-9].Level 1
execute store result score @s Exp run data get storage job: JobStatus[-9].Exp 1
execute store result score @s SubLevel run data get storage job: JobStatus[-9].CP.SubLevel 1
execute store result score @s ElementDamageAdd run data get storage job: JobStatus[-9].CP.ElementDamageAdd 1
execute store result score @s ResistMin run data get storage job: JobStatus[-9].CP.ResistMin 1
execute store result score @s AuraRate run data get storage job: JobStatus[-9].CP.AuraRate 1
execute store result score @s ntervalRate run data get storage job: JobStatus[-9].CP.ntervalRate 1
execute store result score @s MPCostRate run data get storage job: JobStatus[-9].CP.MPCostRate 1

# 必要経験値計算
function job:status/required_exp
