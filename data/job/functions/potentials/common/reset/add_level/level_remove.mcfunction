
###CPで振った他ジョブのレベルを落とす
###わけわかんなくなってくる(((

function job:status/call

#レベルダウンする
execute store result score _ Level run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].Level 1
scoreboard players operation _ Level -= _ Calc
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].Level int 1 run scoreboard players get _ Level

#一応セーブしておく
scoreboard players operation @s Job >< _ RequiredExp
function job:status/save
scoreboard players operation @s Job >< _ RequiredExp

##CPチェック
#リセット
execute if score _ Level matches 1..49 run scoreboard players operation _ RequiredExp >< _ Job
execute if score _ Level matches 1..49 run function job:potentials/common/reset/add_level/reset
execute if score _ Level matches 1..49 run scoreboard players operation _ RequiredExp >< _ Job

#何度もここを回る可能性があるので、通った順番を記録する必要がある。
execute store result storage tusb_player: JobPrev int 1 run scoreboard players get _ RequiredExp
data modify storage tusb_player: SaveJobs append from storage tusb_player: JobPrev
#新しく、CPを剥奪する処理を始める。
execute if score _ Level matches 50.. run function job:potentials/common/reset/add_level/cp_check
execute store result score _ RequiredExp run data get storage tusb_player: SaveJobs[-1]
data remove storage tusb_player: SaveJobs[-1]

#剥奪中の職業のステータスを呼び出す
scoreboard players operation @s Job >< _ RequiredExp
function job:status/load
scoreboard players operation @s Job >< _ RequiredExp

scoreboard players set _ Ret 2
scoreboard players operation @s Job = _ RequiredExp


#> 職業番号を保存しているスコアについて
# 職業の番号を管理しているスコアが多く、複雑になってきたのでいったんまとめておく
#
# _ Job 潜在能力をリセットしている職業の番号が入っている
# _ RequiredExp CPを剥奪中の職業の番号が入っている
# @s Job なんでも入れられるスコア。各処理関数へ引き渡す引数的存在
#
# tusb_player: SaveJobs さらに他ジョブのCPを剥奪するシステムのループがあったとき、 _ Required のスコアを記憶するためのstorage
#
