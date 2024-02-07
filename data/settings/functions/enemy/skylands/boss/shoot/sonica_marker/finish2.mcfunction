#Function
# 衰弱ポーズ
    execute on passengers run data merge entity @s[tag=Head] {item:{tag:{CustomModelData:3004}},start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.966f,0.259f,0.0f],translation:[0.0f,1.602f,-0.007f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body0] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.225f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body1] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.075f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm0] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.42f,0.828f,-0.271f,0.253f],translation:[-0.255f,1.517f,-0.002f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm1] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.42f,0.828f,-0.271f,0.253f],translation:[-0.455f,1.197f,-0.076f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm0] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.41f,0.771f,0.017f,0.486f],translation:[0.252f,1.519f,0.007f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm1] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.41f,0.771f,0.017f,0.486f],translation:[0.326f,1.269f,0.29f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg0] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.117f,-0.258f,0.958f,0.031f],translation:[-0.125f,0.833f,0.002f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg1] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.096f,0.916f,-0.383f,0.073f],translation:[-0.129f,1.134f,0.193f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg0] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.086f,-0.702f,0.702f,0.086f],translation:[0.126f,0.829f,0.004f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg1] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.086f,-0.702f,0.702f,0.086f],translation:[0.216f,0.829f,0.368f]}}
    execute on passengers on passengers run data merge entity @s[tag=Sword] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.135f,0.009f,0.671f,0.729f],translation:[-0.617f,0.933f,-0.127f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.086f,0.981f,-0.015f,0.173f],translation:[0.064f,1.25f,-0.189f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.086f,-0.981f,0.015f,0.173f],translation:[-0.064f,1.25f,-0.189f]}}

# Oh_My_Datを起動
    function #oh_my_dat:please
# TurnChangeを行う
    data modify storage mob_data: Call.Set set value 9
    function skill:enemy/change_turn/
