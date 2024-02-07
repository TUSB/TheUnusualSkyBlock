#Function
#起爆音
playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 0.95
playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 1.05
#NoAI
data modify entity @s NoAI set value 1b
#顔がデカくなる演出
execute on passengers run data merge entity @s {start_interpolation:-1,interpolation_duration:21,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,5f,0f],scale:[12f,12f,12f]},item:{id:"minecraft:creeper_head",Count:1b}}
