#Function
# 回転させつつ、召喚する
    tp @s ^ ^ ^ ~30 0
    data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Global,Sky,Shoot,SherbetEye,Shard],Level:45}],[{Tags:[Global,Sky,Shoot,SherbetEye,ShardDirection],Level:45}]]
    execute at @s positioned ^ ^ ^2 run function skill:enemy/spawn/
