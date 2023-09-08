#Function
# 一番近くのプレイヤーに向けて投擲する
    data modify storage mob_data: Call set value {MotionTick:20,MotionGravity:0.09d}
    execute at @a[predicate=entity:player,sort=nearest,limit=1] run function skill:enemy/parabolic_motion/
    data modify storage mob_data: Tags append value "SmartMotion"
