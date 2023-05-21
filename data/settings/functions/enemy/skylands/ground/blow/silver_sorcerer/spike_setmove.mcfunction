#Function
#Displayの移動設定
execute on passengers run data merge entity @s {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.9f,0.3f,0.9f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.45f,0.0f,0.45f]},start_interpolation:-1,interpolation_duration:4}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike2] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.7f,0.4f,0.7f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.35f,0.3f,0.35f]},start_interpolation:-1,interpolation_duration:4}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike3] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.25f,0.7f,0.25f]},start_interpolation:-1,interpolation_duration:4}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike4] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.5f,0.3f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.15f,1.2f,0.15f]},start_interpolation:-1,interpolation_duration:4}
execute on passengers on passengers run data merge entity @s[tag=ObsSpike5] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.1f,0.5f,0.1f],left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.05f,1.7f,0.05f]},start_interpolation:-1,interpolation_duration:4}

#サウンド
playsound minecraft:item.totem.use hostile @a[distance=..32] ~ ~ ~ 0.5 2
playsound minecraft:item.trident.throw hostile @a[distance=..32] ~ ~ ~ 2 0.65
playsound minecraft:item.trident.throw hostile @a[distance=..32] ~ ~ ~ 2 0.651
playsound minecraft:item.trident.throw hostile @a[distance=..32] ~ ~ ~ 2 0.652
playsound minecraft:ambient.cave_7 hostile @a[distance=..32] ~ ~ ~ 1.0 2.0
