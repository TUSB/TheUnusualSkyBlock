#Function
#ダメージ処理
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[gamemode=!creative,gamemode=!spectator,scores={ProjectileTime=0..},dx=0] run scoreboard players set @s _ 1
execute unless block ^ ^ ^0.5 #block:no_collision run scoreboard players set @s _ 1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,scores={ProjectileTime=0..},dx=0] run function skill:enemy/laser/main/damage

#演出
particle dust 0.360 1.000 0.870 0.5 ^ ^ ^ 0 0 0 0 6 force @a[distance=..32]

#ループ処理
scoreboard players remove _ _ 1
execute if score @s _ matches 1 run data modify storage mob_data: Tags append value Garbage
execute positioned ^ ^ ^0.5 unless score _ _ matches 0 if score @s _ matches 0 run function settings:enemy/skylands/ground/shoot/sat_spider/magnum_loop
