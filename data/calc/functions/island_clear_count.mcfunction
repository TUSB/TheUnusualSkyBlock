#クリア数抽出
##初期化
scoreboard players set _ Ret 0
##skylands
execute store result score _ _ run data get storage area: capture.skylands
scoreboard players operation _ Ret += _ _
##flying_island
execute store result score _ _ run data get storage area: capture.flying_island
scoreboard players operation _ Ret += _ _
# ##cloudia
# execute store result score _ _ run data get storage area: capture.cloudia
# scoreboard players operation _ Ret += _ _
scoreboard players get _ Ret