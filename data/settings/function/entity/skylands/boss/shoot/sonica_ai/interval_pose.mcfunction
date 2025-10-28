#Function
# 待機ポーズ
    execute on passengers run data merge entity @s[tag=Head] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.6f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body0] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.225f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body1] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.075f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm0] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.265f,-0.867f,-0.123f,0.403f],translation:[-0.256f,1.52f,0.006f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm1] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.5f,-0.723f,-0.016f,0.477f],translation:[-0.457f,1.303f,0.251f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm0] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.366f,0.923f,-0.062f,0.106f],translation:[0.257f,1.519f,0.002f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm1] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.496f,0.851f,-0.103f,0.141f],translation:[0.528f,1.263f,0.096f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg0] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[-0.125f,0.825f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg1] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[-0.125f,0.45f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg0] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.924f,-0.383f,0.0f],translation:[0.125f,0.826f,0.003f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg1] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,0.924f,0.383f,0.0f],translation:[0.125f,0.561f,0.246f]}}
    execute on passengers on passengers run data merge entity @s[tag=Sword] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.358f,-0.842f,-0.381f,0.135f],translation:[-0.47f,1.078f,0.456f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.985f,0.0f,0.174f],translation:[0.068f,1.25f,-0.188f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:8,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.985f,-0.0f,0.174f],translation:[-0.068f,1.25f,-0.188f]}}

# スカイモーション起動
    data modify entity @s Tags set from storage mob_data: Tags
    execute if entity @s[tag=!SkyMotion] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion set value 27
    tag @s add SkyMotion
    data modify storage mob_data: Tags set from entity @s Tags
