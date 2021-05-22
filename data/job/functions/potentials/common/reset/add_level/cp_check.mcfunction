
###CP超過チェック

#現在のレベルとCPを取得
function job:status/load
function job:potentials/get_point

# _ Calc には割り振られているCPの合計が入っている
execute if score _ AllExp < _ Calc run function job:potentials/common/reset/add_level/cp_remove

# ステータスを元に戻す
scoreboard players operation @s Job = _ Job
function job:status/load
