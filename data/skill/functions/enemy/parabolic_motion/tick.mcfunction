#> skill:enemy/parabolic_motion/tick
#
# 実行者のMotionを操作して放物運動をさせます(Tick処理)
# （主にY軸方向のMotionを計算・適用します）
#
# @within function main:task/temporary

# Oh_my_dat 呼び出し
    function oh_my_dat:please

# 地面に付いていない場合、本処理に移る
    execute unless entity @s[nbt={OnGround:1b}] run function skill:enemy/parabolic_motion/core/tick

# 地面に付いている場合、リセット処理に移る
    execute if entity @s[nbt={OnGround:1b}] run function skill:enemy/parabolic_motion/core/finish
