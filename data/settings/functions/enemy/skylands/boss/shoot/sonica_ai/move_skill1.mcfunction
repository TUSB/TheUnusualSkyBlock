#Function
# 移動先マーカーを召喚
    function calc:geometry/tp_00000
    data modify entity 0-0-0-0-0 Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos
    tp @s 0-0-0-0-0

# 移動演出
    execute facing entity 0-0-0-0-0 feet run function settings:enemy/skylands/boss/shoot/sonica_ai/move_skill2
    playsound entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 0.5 0.65
    playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
    execute at @s run playsound entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 0.5 0.65
    execute at @s run playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.5 0.5

# マーカー戻す
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
