#> skill:enemy/parabolic_motion/core/
#
# ParabolicMotionに関するメイン処理を行います
#
# @within function skill:enemy/parabolic_motion/

# 一時的にForceloadする
    execute in area:control_area run forceload add -1 -1 0 0

# 0-0-0-0-0を原点に召喚する
# 0-0-0-0-1を実行位置に召喚する
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
    function calc:geometry/tp_00001

# 数値をスコアに代入する
    execute store result score # _ run data get storage mob_data: Call.MotionTick
    execute store result score # Calc run data get storage mob_data: Call.MotionGravity 5000

# Motionを計算する
    function skill:enemy/parabolic_motion/core/calc

# リセット
    execute in area:control_area run forceload remove -1 -1 0 0
    execute in area:control_area run forceload add 0 0
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
    execute as 0-0-0-0-1 run function calc:geometry/return_marker
