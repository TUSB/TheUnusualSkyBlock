#> skill:enemy/parabolic_motion/core/calc
#
# ParabolicMotionに関する計算処理を行います
#
# @within function skill:enemy/parabolic_motion/core/

# Oh_my_datにMotion,Tick,Gravityを保存するための初期化
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion set value {Motion:[0d,0d,0d],Tick:0,Gravity:0d}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Tick set from storage mob_data: Argument.MotionTick
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Gravity set from storage mob_data: Argument.MotionGravity

# 0-0-0-0-0 と 0-0-0-0-1 のX座標差を求め、X_Motionを求める
    execute store result score _ _ run data get entity 0-0-0-0-0 Pos[0] 1000
    execute store result score _ Calc run data get entity 0-0-0-0-1 Pos[0] 1000
    scoreboard players operation _ Calc -= _ _
    scoreboard players operation _ Calc /= # _
    execute store result entity @s Motion[0] double 0.001 run scoreboard players get _ Calc
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[0] double 0.001 run scoreboard players get _ Calc

# 0-0-0-0-0 と 0-0-0-0-1 のZ座標差を求め、Z_Motionを求める
    execute store result score _ _ run data get entity 0-0-0-0-0 Pos[2] 1000
    execute store result score _ Calc run data get entity 0-0-0-0-1 Pos[2] 1000
    scoreboard players operation _ Calc -= _ _
    scoreboard players operation _ Calc /= # _
    execute store result entity @s Motion[2] double 0.001 run scoreboard players get _ Calc
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[2] double 0.001 run scoreboard players get _ Calc

# 0-0-0-0-0 と 0-0-0-0-1 のY座標差を求め、Y_Motionを求める
# 重力加速度によるY_Motionを調整を行う
    execute store result score _ _ run data get entity 0-0-0-0-0 Pos[1] 1000
    execute store result score _ Calc run data get entity 0-0-0-0-1 Pos[1] 1000
    scoreboard players operation _ Calc -= _ _
    scoreboard players operation _ Calc /= # _
    scoreboard players operation # Calc *= # _
    scoreboard players operation _ Calc += # Calc
    scoreboard players set _ _ 10000
    scoreboard players operation _ Calc < _ _
    scoreboard players set _ _ -10000
    scoreboard players operation _ Calc > _ _
    execute store result entity @s Motion[1] double 0.001 run scoreboard players get _ Calc
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[1] double 0.001 run scoreboard players get _ Calc
