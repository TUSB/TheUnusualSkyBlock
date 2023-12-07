#Function
# 攻撃準備ポーズ
    execute on passengers run data merge entity @s[tag=Head] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.6f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body0] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.793f,0.0f,0.609f],translation:[0.0f,1.225f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body1] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.793f,0.0f,0.609f],translation:[0.0f,1.075f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm0] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.251f,0.552f,-0.338f,0.72f],translation:[-0.063f,1.523f,-0.251f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm1] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.4f,0.844f,-0.05f,0.354f],translation:[-0.006f,1.451f,-0.619f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm0] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.123f,0.587f,0.146f,0.787f],translation:[0.062f,1.524f,0.251f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm1] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.123f,0.587f,0.146f,0.787f],translation:[-0.041f,1.491f,0.621f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg0] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.304f,0.687f,-0.396f,0.527f],translation:[-0.036f,0.827f,-0.12f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg1] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.231f,0.734f,0.3f,0.563f],translation:[-0.326f,0.636f,-0.042f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg0] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.793f,0.0f,0.609f],translation:[0.032f,0.825f,0.121f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg1] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.793f,0.0f,0.609f],translation:[0.032f,0.45f,0.121f]}}
    execute on passengers on passengers run data merge entity @s[tag=Sword] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.269f,-0.522f,0.019f,0.809f],translation:[-0.149f,1.647f,-0.817f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.676f,0.0f,0.737f],translation:[0.199f,1.25f,0.017f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:4,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.887f,0.0f,0.462f],translation:[0.164f,1.25f,-0.115f]}}

# 値の準備
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick set value 20