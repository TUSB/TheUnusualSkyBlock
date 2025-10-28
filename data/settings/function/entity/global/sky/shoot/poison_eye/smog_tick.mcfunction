#Function
# パーティクル
    particle sneeze ~ ~ ~ 1 0.1 1 0 2 force @a[distance=..16,tag=ShowParticles]
# なぜか徐々に近づいてくる……
    execute if entity @a[predicate=entity:player,distance=..16] facing entity @a[distance=..16,predicate=entity:player,sort=nearest,limit=1] feet if block ^ ^ ^0.05 #block:no_collision run tp @s ^ ^ ^0.05 ~ ~
