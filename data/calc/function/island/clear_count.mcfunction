#> calc:island/clear_count
#クリア数抽出
##初期化
scoreboard players set _ Ret 0
##skylands
execute store result score __ _ run data get storage area: capture.skylands
scoreboard players operation _ Ret += __ _
##flying_island
execute store result score __ _ run data get storage area: capture.flying_island
scoreboard players operation _ Ret += __ _
# ##cloudia
# execute store result score __ _ run data get storage area: capture.cloudia
# scoreboard players operation _ Ret += __ _
scoreboard players reset __ _
return run scoreboard players get _ Ret
