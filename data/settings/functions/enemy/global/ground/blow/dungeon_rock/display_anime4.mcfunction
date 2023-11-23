#Function
execute as @e on passengers run data modify entity @s item_display set {start_interpolation:-1,interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.707f,-0.707f,0.0f],translation:[0.0f,0.0f,0.0f]}}
