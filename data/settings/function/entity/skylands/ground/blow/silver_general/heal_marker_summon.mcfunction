#Function
# 召喚する
    data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverGeneral,HealMarker],Level:36}]]
# 近くにいる敵ランダム3体の足元に回復魔法陣召喚
    execute at @e[distance=..8,tag=Enemy,sort=random,limit=2] run function skill:enemy/spawn/
    execute unless entity @e[distance=..8,tag=Enemy] run function skill:enemy/spawn/
