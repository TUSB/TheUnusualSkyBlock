#Function
# 1体は確定召喚
    function settings:enemy/skylands/ground/blow/evil_eye/summon2
# 2体目以降はランダム
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..29 run function settings:enemy/skylands/ground/blow/evil_eye/summon2
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..29 run function settings:enemy/skylands/ground/blow/evil_eye/summon2
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
