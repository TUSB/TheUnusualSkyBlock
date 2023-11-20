#Function
# ポーズ変更
    execute on passengers run data merge entity @s[tag=Head] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.996f,0.0f,0.087f],translation:[0.0f,1.6f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.985f,-0.0f,0.174f],translation:[0.0f,1.225f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=Body1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.985f,-0.0f,0.174f],translation:[0.0f,1.075f,-0.0f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.439f,-0.587f,-0.27f,0.625f],translation:[-0.234f,1.517f,0.09f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightArm1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.374f,-0.558f,-0.116f,0.732f],translation:[-0.168f,1.191f,0.284f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.546f,0.606f,-0.008f,0.578f],translation:[0.233f,1.519f,-0.079f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftArm1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.546f,0.606f,-0.008f,0.578f],translation:[0.131f,1.267f,0.194f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.073f,-0.893f,-0.416f,0.157f],translation:[-0.119f,0.827f,0.04f]}}
    execute on passengers on passengers run data merge entity @s[tag=RightLeg1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.087f,-0.853f,-0.492f,0.15f],translation:[-0.217f,0.588f,-0.232f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg0] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.066f,-0.91f,0.377f,0.16f],translation:[0.119f,0.826f,-0.04f]}}
    execute on passengers on passengers run data merge entity @s[tag=LeftLeg1] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.985f,-0.0f,0.174f],translation:[0.205f,0.557f,0.199f]}}
    execute on passengers on passengers run data merge entity @s[tag=Sword] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.452f,-0.439f,-0.624f,0.462f],translation:[-0.067f,1.008f,0.515f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.996f,-0.0f,0.087f],translation:[-0.035f,1.25f,-0.197f]}}
    execute on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.924f,-0.0f,0.383f],translation:[-0.141f,1.25f,-0.141f]}}

# TP
    tp @s ^ ^ ^0.5 ~ ~

# 演出
    playsound entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 0.6 1.8
    playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 1 0.4
    playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 1 0
    playsound entity.witch.throw hostile @a[distance=..32] ~ ~ ~ 1.5 0.5
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.25 1.5
