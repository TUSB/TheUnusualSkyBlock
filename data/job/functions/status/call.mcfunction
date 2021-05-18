
###現在の職業のステータス呼び出し

#>ステータスの扱い方
#
# oh_my_dat の JobStatus リストの中に各職業のステータスを保存する
# 
# 要素0はどの職業でもない(=無職)ステータスを保存している
# 各要素の番号と職業の番号は一致している
# 例：JobStatus[3] は狩人(3)のステータスが入っている
#
# 要素指定で直接取り出してもよいし、
# このfunctionを用いた取り出し方を使ってもよい
#

#>このfunctionの使い方
#
# このfunctionを呼び出したプレイヤーの職業に応じて、
# 楽にステータスへアクセスすることを目的に使う。
#
# スコアは、 @s Job が用いられる
#
# このfunctionを呼び出した後は、
# JobStatus[-9] でアクセスすることが出来る。
#

function oh_my_dat:please

#リセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[16]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[15]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[14]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[13]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[12]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[11]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[10]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[9]

#調整
execute if score @s Job matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
execute if score @s Job matches 2.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
execute if score @s Job matches 3.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
execute if score @s Job matches 4.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
execute if score @s Job matches 5.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
execute if score @s Job matches 6.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
execute if score @s Job matches 7.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
execute if score @s Job matches 8.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus append value {}
