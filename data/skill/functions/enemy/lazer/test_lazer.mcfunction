#ダメージ処理
execute as @a[gamemode=!creative,gamemode=!spectator,dx=0,dy=0,dz=0] run function enemy:snowball_damage

#演出
function makeup:skill/enemy/lazer/test_lazer

#ループ処理
execute store result storage mob_data: Lazer int 0.99999 run data get storage mob_data: Lazer
execute unless data storage mob_data: {Lazer:0} positioned ^ ^ ^0.5 if block ^ ^ ^ air run function skill:enemy/lazer/test_lazer
