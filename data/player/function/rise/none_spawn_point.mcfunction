#> player:rise/none_spawn_point

# デバッグモードならこの処理を除外
execute if data storage main: difficult{world:"debug"} run return fail

execute in area:cloudia run spawnpoint @s -1901 110 -137

# 復活系の処理が控えているならテレポート処理を除外
execute unless entity @s[tag=!HasRestoreItems,tag=!Raise] run return fail

function area:jump_to/cloudia/tutorial
