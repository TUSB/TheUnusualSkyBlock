#ダメージ処理
execute positioned ^ ^ ^0.5 as @a[gamemode=!creative,gamemode=!spectator,scores={SnowballTime=0..},dx=0,dy=0,dz=0] run function skill:enemy/laser/main/damage

#演出
function makeup:skill/enemy/laser/loop/test

#ループ処理
execute store result storage mob_data: Call.Loop int 0.99999 run data get storage mob_data: Call.Loop
execute unless data storage mob_data: Call{Loop:0} positioned ^ ^ ^0.5 if block ^ ^ ^ air run function skill:enemy/laser/loop/test
