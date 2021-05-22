
###49レベル以下のとき、CPをリセットする
###0レベルのときは呼び出されない(軽量化)

function job:status/load
function job:status/cp_reset
function job:status/save

scoreboard players operation @s Job = _ Job
function job:status/load
