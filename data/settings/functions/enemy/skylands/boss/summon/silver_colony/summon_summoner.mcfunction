#Function
# Markerを召喚する
    execute at @s run function calc:geometry/tp_00000
# 0-0-0-0-0を利用して召喚する座標を決める
    execute as 0-0-0-0-0 run function calc:set/random_rotation
    execute at 0-0-0-0-0 positioned ^ ^ ^2 run function settings:enemy/skylands/boss/summon/silver_colony/summon_summoner_loop1
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 召喚したら5秒間光る
    execute on vehicle run effect give @s glowing 10 0 true
