#ダメージ処理
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,scores={ProjectileTime=0..},dx=0,dy=0,dz=0] run function skill:enemy/laser/loop/piglin_snipe/damage
execute positioned ~-0.5 ~-0.5 ~-0.5 unless block ^ ^ ^ #main:no_collision run data modify storage mob_data: Call.Loop set value 0
#演出
function makeup:skill/enemy/laser/loop/piglin_snipe/trail

#ループ処理
execute store result storage mob_data: Call.Loop int 0.99999 run data get storage mob_data: Call.Loop
#execute if data storage mob_data: Call{Loop:0} positioned ^ ^ ^ run function skill:enemy/laser/loop/piglin_snipe/end
execute unless data storage mob_data: Call{Loop:0} positioned ^ ^ ^0.5 if block ^ ^ ^ #main:no_collision run function skill:enemy/laser/loop/piglin_snipe/
