#Function
# 向きを決めつつ召喚する
    data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Global,Ground,Shoot,Shotzo,Bullet],Level:10}]]
    execute positioned ^ ^ ^1 run function skill:enemy/spawn/
