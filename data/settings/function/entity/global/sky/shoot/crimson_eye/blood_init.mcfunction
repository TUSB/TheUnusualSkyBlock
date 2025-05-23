#Function
# 一番近くのプレイヤーに向けて投擲する
    data modify storage mob_data: Call set value {MotionTick:30,MotionGravity:0.06d}
    function skill:enemy/parabolic_motion/
    data modify storage mob_data: Tags append value "SmartMotion"
