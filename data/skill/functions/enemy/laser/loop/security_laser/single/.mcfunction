#ダメージ処理
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[predicate=entity:friendly,scores={ProjectileTime=0..},dx=0,dy=0,dz=0] run function skill:enemy/laser/loop/security_laser/single/damage

#演出
function makeup:skill/enemy/laser/loop/security_laser/single/

#ループ処理
execute store result storage mob_data: Call.Loop int 0.99999 run data get storage mob_data: Call.Loop
execute unless data storage mob_data: Call{Loop:0} positioned ^ ^ ^0.5 if block ^ ^ ^ #block:no_collision run function skill:enemy/laser/loop/security_laser/single/
