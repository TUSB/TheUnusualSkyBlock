#Function
#ダメージ処理
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0] run function settings:enemy/global/sky/shoot/electro_eye/laser_damage

#演出
particle dust 100000000 100000000 4 1.2 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..32]
particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.1 2 force @a[distance=..32]

#ループ処理
execute store result storage mob_data: Call.Loop int 0.99999 run data get storage mob_data: Call.Loop
execute unless data storage mob_data: Call{Loop:0} positioned ^ ^ ^0.5 if block ^ ^ ^ #block:no_collision run function settings:enemy/global/sky/shoot/electro_eye/laser_loop
