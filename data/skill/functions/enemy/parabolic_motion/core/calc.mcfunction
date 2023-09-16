#> skill:enemy/parabolic_motion/core/calc
#
# ParabolicMotionに関する計算処理を行います
#
# @within function skill:enemy/parabolic_motion/core/

# 0-0-0-0-1 のY座標に対し、重力加速度によるY_Motionで調整を行う
    execute store result score _ Calc run data get entity @s Pos[1] 10000
    execute store result score _ _ run data get entity 0-0-0-0-1 Pos[1] 10000
    scoreboard players operation _ Calc -= _ _
    scoreboard players operation _ Calc /= # _
    scoreboard players operation # Calc *= # _
    scoreboard players operation _ Calc -= # Calc
    scoreboard players set @s _ 100000
    scoreboard players operation _ Calc < @s _
    scoreboard players set @s _ -100000
    scoreboard players operation _ Calc > @s _
    scoreboard players operation _ _ -= _ Calc
    execute store result entity 0-0-0-0-1 Pos[1] double 0.0001 run scoreboard players get _ _

    #向きを保存
    execute positioned as @s facing entity 0-0-0-0-1 feet run tp @s ~ ~ ~ ~ ~

    #SmartMotionの引数を設定、呼び出し
    data modify storage mob_data: Call merge value {Start:1b,TP:1b}
    execute positioned as @s as 0-0-0-0-1 run function #util:distance
    execute store result storage mob_data: Call.Speed.Set int 1 run data get storage util: out 10
    execute store result storage mob_data: Call.Gravity.Set int 1 run data get storage mob_data: Call.MotionGravity 10000
    execute at @s run function skill:enemy/smart_motion/
