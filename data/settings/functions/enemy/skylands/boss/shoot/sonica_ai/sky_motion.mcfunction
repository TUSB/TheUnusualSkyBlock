#Function
# エセ振り子運動
    execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion
    execute if score _ _ matches 34 run tp @s ~ ~0.005 ~
    execute if score _ _ matches 33 run tp @s ~ ~0.01 ~
    execute if score _ _ matches 32 run tp @s ~ ~0.015 ~
    execute if score _ _ matches 31 run tp @s ~ ~0.02 ~
    execute if score _ _ matches 30 run tp @s ~ ~0.03 ~
    execute if score _ _ matches 26..29 run tp @s ~ ~0.04 ~
    execute if score _ _ matches 27 on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:12,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.996f,0.0f,0.087f],translation:[0.035f,1.25f,-0.197f]}}
    execute if score _ _ matches 27 on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:12,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.996f,-0.0f,0.087f],translation:[-0.035f,1.25f,-0.197f]}}
    execute if score _ _ matches 25 run tp @s ~ ~0.03 ~
    execute if score _ _ matches 24 run tp @s ~ ~0.02 ~
    execute if score _ _ matches 23 run tp @s ~ ~0.015 ~
    execute if score _ _ matches 22 run tp @s ~ ~0.01 ~
    execute if score _ _ matches 21 run tp @s ~ ~0.005 ~
    execute if score _ _ matches 16 run tp @s ~ ~-0.005 ~
    execute if score _ _ matches 15 run tp @s ~ ~-0.01 ~
    execute if score _ _ matches 14 run tp @s ~ ~-0.015 ~
    execute if score _ _ matches 13 run tp @s ~ ~-0.02 ~
    execute if score _ _ matches 12 run tp @s ~ ~-0.03 ~
    execute if score _ _ matches 8..11 run tp @s ~ ~-0.04 ~
    execute if score _ _ matches 9 on passengers on passengers run data merge entity @s[tag=WingRight] {start_interpolation:-1,interpolation_duration:12,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.985f,0.0f,0.174f],translation:[0.068f,1.25f,-0.188f]}}
    execute if score _ _ matches 9 on passengers on passengers run data merge entity @s[tag=WingLeft] {start_interpolation:-1,interpolation_duration:12,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-0.985f,-0.0f,0.174f],translation:[-0.068f,1.25f,-0.188f]}}
    execute if score _ _ matches 7 run tp @s ~ ~-0.03 ~
    execute if score _ _ matches 6 run tp @s ~ ~-0.02 ~
    execute if score _ _ matches 5 run tp @s ~ ~-0.015 ~
    execute if score _ _ matches 4 run tp @s ~ ~-0.01 ~
    execute if score _ _ matches 3 run tp @s ~ ~-0.005 ~
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion
    execute if score _ _ matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion set value 36
