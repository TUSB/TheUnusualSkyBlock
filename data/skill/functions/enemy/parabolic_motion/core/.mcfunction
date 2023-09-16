#> skill:enemy/parabolic_motion/core/
#
# ParabolicMotionに関するメイン処理を行います
#
# @within function skill:enemy/parabolic_motion/

# 0-0-0-0-1を実行位置に召喚する
    function calc:geometry/tp_00001

# 数値をスコアに代入する
    execute store result score # _ run data get storage mob_data: Call.MotionTick
    execute store result score # Calc run data get storage mob_data: Call.MotionGravity 50000

# Motionを計算する
    function skill:enemy/parabolic_motion/core/calc

# リセット
    execute as 0-0-0-0-1 run function calc:geometry/return_marker
