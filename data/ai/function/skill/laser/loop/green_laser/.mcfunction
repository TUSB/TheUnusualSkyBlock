#ダメージ処理
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,scores={ProjectileTime=0..},dx=0,dy=0,dz=0] run function skill:enemy/laser/loop/green_laser/damage
#演出
function makeup:skill/enemy/laser/loop/green_laser/trail

#ループ処理
execute store result storage mob_data: Call.Loop int 0.99999 run data get storage mob_data: Call.Loop
execute if data storage mob_data: Call{Loop:0} positioned ^ ^ ^ run function skill:enemy/laser/loopgreen_laser/end
execute unless data storage mob_data: Call{Loop:0} positioned ^ ^ ^0.5 if block ^ ^ ^ #block:no_collision run function skill:enemy/laser/loop/green_laser/