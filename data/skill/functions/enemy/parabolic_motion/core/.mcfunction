#> skill:enemy/parabolic_motion/core/
#
# ParabolicMotionに関するメイン処理を行います
#
# @within function skill:enemy/parabolic_motion/

# Oh_my_datを開く（後で元に戻す）
    data modify storage mob_data: OhMyDatID set from storage oh_my_dat: last_id
    function oh_my_dat:please

# 毎Tick処理を行うためNativeFlagを立てる
#     scoreboard players add @s NativeFlag 100
#     tag @s add Parabolic
#     data modify storage mob_data: Tags append value "Parabolic"
#     data modify entity @s OnGround set value 0b

# 0-0-0-0-0を実行者の座標に召喚する
# 0-0-0-0-1を実行位置に召喚する
    execute at @s run function calc:geometry/tp_00000
    function calc:geometry/tp_00001

# 数値をスコアに代入する
    execute store result score # _ run data get storage mob_data: Call.MotionTick
    execute store result score # Calc run data get storage mob_data: Call.MotionGravity 500

# Motionを計算する
    function skill:enemy/parabolic_motion/core/calc

# SmartMotionに引き継ぐ
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
    execute as 0-0-0-0-1 run function calc:geometry/return_marker
    data modify entity 0-0-0-0-0 Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ParabolicMotion.Motion[1]
    execute store result storage mob_data: Call.Speed.Set int 1 run function calc:geometry/distance/
    execute store result storage mob_data: Call.Gravity.Set int 0.2 run data get storage mob_data: Call.MotionGravity
    execute at 0-0-0-0-1 facing entity 0-0-0-0-1 feet run function skill:enemy/smart_motion/
    playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1

# Oh_my_datをもとに戻す
    execute store result score _ OhMyDatID run data get storage mob_data: OhMyDatID
    function oh_its_dat:please

# リセット
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
    execute as 0-0-0-0-1 run function calc:geometry/return_marker
    data remove storage mob_data: OhMyDatID