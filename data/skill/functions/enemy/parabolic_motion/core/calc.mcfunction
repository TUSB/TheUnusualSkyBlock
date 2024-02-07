#> skill:enemy/parabolic_motion/core/calc
#
# ParabolicMotionに関する計算処理を行います
#
# @within function skill:enemy/parabolic_motion/core/

# @s と 0-0-0-0-1 のX座標差を10倍で保存
    execute store result score _ _ run data get entity @s Pos[0] 10000
    execute store result score _ Calc run data get entity 0-0-0-0-1 Pos[0] 10000
    scoreboard players operation _ Calc -= _ _
    scoreboard players operation _ Calc /= # _
    execute store result entity 0-0-0-0-0 Pos[0] double 0.0001 run scoreboard players get _ Calc

# @s と 0-0-0-0-1 のZ座標差を10倍で保存
    execute store result score _ _ run data get entity @s Pos[2] 10000
    execute store result score _ Calc run data get entity 0-0-0-0-1 Pos[2] 10000
    scoreboard players operation _ Calc -= _ _
    scoreboard players operation _ Calc /= # _
    execute store result entity 0-0-0-0-0 Pos[2] double 0.0001 run scoreboard players get _ Calc

# @s と 0-0-0-0-1 のY座標差を10倍で保存
# 重力加速度によるY_Motionを調整を行う
    execute store result score _ _ run data get entity @s Pos[1] 10000
    execute store result score _ Calc run data get entity 0-0-0-0-1 Pos[1] 10000
    scoreboard players operation _ Calc -= _ _
    scoreboard players operation _ Calc /= # _
    scoreboard players operation # Calc *= # _
    scoreboard players operation _ Calc += # Calc
    scoreboard players set _ _ 100000
    scoreboard players operation _ Calc < _ _
    scoreboard players set _ _ -100000
    scoreboard players operation _ Calc > _ _
    execute store result entity 0-0-0-0-0 Pos[1] double 0.0001 run scoreboard players get _ Calc

    #向きを保存
    execute positioned 0.0 0.0 0.0 facing entity 0-0-0-0-0 feet positioned as @s run tp @s ~ ~ ~ ~ ~

    #SmartMotionの引数を設定、呼び出し
    data modify storage mob_data: Call merge value {Start:1b,TP:1b}
    execute in area:control_area positioned 0.0 0.0 0.0 as 0-0-0-0-0 run function #util:distance
    execute store result storage mob_data: Call.Speed.Set int 1 run data get storage util: out 100
    execute store result storage mob_data: Call.Gravity.Set int 1 run data get storage mob_data: Call.MotionGravity 10000
    execute at @s run function skill:enemy/smart_motion/
