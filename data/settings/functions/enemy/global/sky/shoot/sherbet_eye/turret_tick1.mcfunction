#Function
# Markerを召喚する
    function calc:geometry/tp_00000
# 0-0-0-0-0の向きでパーティクル表示
    execute as 0-0-0-0-0 run function calc:set/random_rotation
    execute at 0-0-0-0-0 run function settings:enemy/global/sky/shoot/sherbet_eye/turret_tick2
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
