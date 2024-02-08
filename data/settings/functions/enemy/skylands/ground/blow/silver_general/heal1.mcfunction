#Function
# 対象となる敵をDistanceと当たり判定から調べる
    scoreboard players operation # Attack = @s Attack
    execute as @e[tag=Enemy,distance=..3] positioned ~-3 ~-1 ~-3 if entity @s[dx=5,dy=1,dz=5] if score @s HP < @s HPMax run function settings:enemy/skylands/ground/blow/silver_healer/heal2
