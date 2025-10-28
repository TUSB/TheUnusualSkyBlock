#Function
# 移動ポーズ
    execute on passengers run data merge entity @s[tag=Head] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.999f,0.044f,0.0f],translation:[0.0f,1.548f,0.193f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body0] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.966f,0.259f,0.0f],translation:[0.0f,1.225f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body1] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.966f,0.259f,0.0f],translation:[0.0f,1.095f,-0.075f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm0] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.447f,-0.839f,0.188f,0.245f],translation:[-0.255f,1.479f,0.155f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm1] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.619f,-0.727f,-0.06f,0.291f],translation:[-0.436f,1.222f,0.377f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm0] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.454f,-0.752f,-0.479f,0.02f],translation:[0.256f,1.479f,0.146f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm1] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.454f,-0.752f,-0.479f,0.02f],translation:[0.482f,1.223f,-0.033f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg0] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.966f,-0.259f,0.0f],translation:[-0.125f,0.879f,-0.196f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg1] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.796f,0.605f,0.0f],translation:[-0.125f,0.563f,-0.031f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg0] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.966f,0.259f,0.0f],translation:[0.125f,0.879f,-0.2f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg1] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.966f,0.259f,0.0f],translation:[0.125f,0.554f,-0.388f]}}
    execute on passengers on passengers run data merge entity @s[tag=Sword] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.229f,-0.788f,-0.558f,0.122f],translation:[-0.455f,0.937f,0.483f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.985f,0.0f,0.174f],translation:[0.068f,1.25f,-0.188f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.985f,-0.0f,0.174f],translation:[-0.068f,1.25f,-0.188f]}}

# 移動先マーカーの方を向く
    function calc:geometry/tp_00000
    data modify entity 0-0-0-0-0 Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos
    execute at @s facing entity 0-0-0-0-0 eyes run tp @s ~ ~ ~ ~ ~
    execute at @s on passengers run tp @s ~ ~ ~ ~ 0
    execute at @s on passengers on passengers run tp @s ~ ~ ~ ~ 0

# マーカー戻す
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
