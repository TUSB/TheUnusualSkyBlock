#Function
# 決めポーズ2
    execute on passengers run data merge entity @s[tag=Head] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.991f,-0.131f,0.0f],translation:[-0.0f,1.6f,0.003f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body0] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.225f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body1] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,1.075f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm0] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.045f,-0.272f,0.676f,0.683f],translation:[-0.251f,1.533f,0.004f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm1] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.116f,-0.271f,0.313f,0.903f],translation:[-0.268f,1.876f,0.172f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm0] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.598f,0.77f,0.16f,0.154f],translation:[0.253f,1.533f,0.004f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm1] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.935f,0.276f,0.193f,0.108f],translation:[0.335f,1.865f,0.169f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg0] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.087f,0.996f,0.0f,0.0f],translation:[-0.126f,0.825f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg1] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.087f,0.996f,0.0f,0.0f],translation:[-0.191f,0.456f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg0] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.087f,0.996f,-0.0f,0.0f],translation:[0.126f,0.825f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg1] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.087f,0.996f,-0.0f,0.0f],translation:[0.191f,0.456f,0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Sword] {start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.186f,-0.214f,-0.066f,0.957f],translation:[-0.066f,2.031f,0.356f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingRight] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.985f,0.0f,0.174f],translation:[0.068f,1.25f,-0.188f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingLeft] {interpolation_duration:6,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.985f,-0.0f,0.174f],translation:[-0.068f,1.25f,-0.188f]}}

# 音
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound block.respawn_anchor.set_spawn hostile @a[distance=..32] ~ ~ ~ 0.5 2 0
