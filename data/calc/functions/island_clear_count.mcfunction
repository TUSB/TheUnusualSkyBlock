#クリア数抽出
##初期化
scoreboard players set _ Calc 0
##skylands
execute store result score _ _ run data get storage area: capture.skylands
scoreboard players operation _ Calc += _ _
##flying_island
execute store result score _ _ run data get storage area: capture.flying_island
scoreboard players operation _ Calc += _ _
# ##cloudia
# execute store result score _ _ run data get storage area: capture.cloudia
# scoreboard players operation _ Calc += _ _
scoreboard players get _ Calc