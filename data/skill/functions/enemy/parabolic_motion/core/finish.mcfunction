#> skill:enemy/parabolic_motion/core/finish
#
# ParabolicMotionに関する終了処理を行います
#
# @within function skill:enemy/parabolic_motion/tick

# フラグ外しとリセット処理
    tag @s remove Parabolic
    scoreboard players remove @s NativeFlag 100
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion