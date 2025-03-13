#Function
#Displayの移動設定（終了時）
execute on passengers run data merge entity @s {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.9f,0f,0.9f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.45f,-0.31f,0.45f]},start_interpolation:-1,interpolation_duration:3}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike2] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.7f,0f,0.7f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.35f,-0.41f,0.35f]},start_interpolation:-1,interpolation_duration:3}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike3] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0f,0.5f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.25f,-0.51f,0.25f]},start_interpolation:-1,interpolation_duration:3}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike4] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0f,0.3f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.15f,-0.51f,0.15f]},start_interpolation:-1,interpolation_duration:3}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike5] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.1f,0f,0.1f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.05f,-0.51f,0.05f]},start_interpolation:-1,interpolation_duration:3}
