#Function
# 決めポーズ途中
    execute on passengers run data merge entity @s[tag=Head] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.086f,0.173f,0.015f,0.981f],translation:[-0.055f,1.564f,-0.152f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.213f,0.17f,0.038f,0.961f],translation:[0.0f,1.225f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.213f,0.17f,0.038f,0.961f],translation:[0.022f,1.089f,0.06f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.005f,0.562f,-0.331f,0.758f],translation:[0.193f,1.492f,-0.213f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.51f,0.812f,-0.008f,0.285f],translation:[0.246f,1.294f,-0.536f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.389f,0.157f,0.466f,0.779f],translation:[-0.284f,1.491f,-0.028f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.386f,-0.166f,-0.223f,0.88f],translation:[-0.486f,1.267f,0.196f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.04f,0.082f,0.114f,0.989f],translation:[0.176f,0.862f,0.114f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.191f,0.054f,0.13f,0.972f],translation:[0.258f,0.499f,0.085f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.023f,0.124f,-0.172f,0.977f],translation:[-0.062f,0.863f,0.2f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.327f,0.177f,-0.117f,0.921f],translation:[-0.186f,0.513f,0.209f]}}
    execute on passengers on passengers run data merge entity @s[tag=Sword] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.719f,0.367f,0.589f,0.033f],translation:[0.139f,1.036f,-0.681f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,1.25f,0.2f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.342f,0.0f,0.94f],translation:[0.129f,1.25f,0.153f]}}

# 演出
    playsound entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 0.6 1.8
    playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 1 0.4
    playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 1 0
    playsound entity.witch.throw hostile @a[distance=..32] ~ ~ ~ 1.5 0.5
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.25 1.5
