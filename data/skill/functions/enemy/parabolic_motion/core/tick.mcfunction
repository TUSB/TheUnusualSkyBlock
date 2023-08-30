#> skill:enemy/parabolic_motion/core/tick
#
# ParabolicMotionに関するTickメイン処理を行います
#
# @within function skill:enemy/parabolic_motion/tick

# Y_Motionの計算
    execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[1] 1000
    execute store result score # Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Gravity 1000
    scoreboard players operation _ Calc -= # Calc
    scoreboard players set _ _ 10000
    scoreboard players operation _ Calc < _ _
    scoreboard players set _ _ -10000
    scoreboard players operation _ Calc > _ _
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[1] double 0.001 run scoreboard players get _ Calc

# Motion適用
    data modify entity @s Motion set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion