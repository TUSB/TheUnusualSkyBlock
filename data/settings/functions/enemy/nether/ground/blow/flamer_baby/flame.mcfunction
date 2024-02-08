#Function
#爆炎処理
execute if entity @s[predicate=settings:enemy/conditions/survival] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace air

#演出音
playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.8 0.75
playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.8 0.74
playsound minecraft:enchant.thorns.hit hostile @a[distance=..32] ~ ~ ~ 0.5 0
playsound minecraft:block.respawn_anchor.set_spawn_1 hostile @a[distance=..32] ~ ~ ~ 1.5 1.5

#パーティクル
# Collection--lava
particle lava ~-0.0 ~0.15 ~0.0 0.2 0.0 0.2 0 10 force @a[distance=..32,tag=ShowParticles]
# Collection--円
particle flame ~-0.0 ~0.0 ~1.0 ~-0.0 ~1000000000.0 ~1.0 0.00000000012 0 force @a[distance=..32]
particle flame ~0.5 ~0.0 ~0.87 ~0.5 ~1000000000.0 ~0.87 0.00000000012 0 force @a[distance=..32]
particle flame ~0.87 ~0.0 ~0.5 ~0.87 ~1000000000.0 ~0.5 0.00000000012 0 force @a[distance=..32]
particle flame ~1.0 ~0.0 ~0.0 ~1.0 ~1000000000.0 ~0.0 0.00000000012 0 force @a[distance=..32]
particle flame ~0.87 ~0.0 ~-0.5 ~0.87 ~1000000000.0 ~-0.5 0.00000000012 0 force @a[distance=..32]
particle flame ~0.5 ~0.0 ~-0.87 ~0.5 ~1000000000.0 ~-0.87 0.00000000012 0 force @a[distance=..32]
particle flame ~-0.0 ~0.0 ~-1.0 ~-0.0 ~1000000000.0 ~-1.0 0.00000000012 0 force @a[distance=..32]
particle flame ~-0.5 ~0.0 ~-0.87 ~-0.5 ~1000000000.0 ~-0.87 0.00000000012 0 force @a[distance=..32]
particle flame ~-0.87 ~0.0 ~-0.5 ~-0.87 ~1000000000.0 ~-0.5 0.00000000012 0 force @a[distance=..32]
particle flame ~-1.0 ~0.0 ~0.0 ~-1.0 ~1000000000.0 ~0.0 0.00000000012 0 force @a[distance=..32]
particle flame ~-0.87 ~0.0 ~0.5 ~-0.87 ~1000000000.0 ~0.5 0.00000000012 0 force @a[distance=..32]
particle flame ~-0.5 ~0.0 ~0.87 ~-0.5 ~1000000000.0 ~0.87 0.00000000012 0 force @a[distance=..32]
# Collection--円.001
particle flame ~0.21 ~0.0 ~0.77 ~0.21 ~1000000000.0 ~0.77 0.00000000016 0 force @a[distance=..32]
particle flame ~0.57 ~0.0 ~0.57 ~0.57 ~1000000000.0 ~0.57 0.00000000016 0 force @a[distance=..32]
particle flame ~0.77 ~0.0 ~0.21 ~0.77 ~1000000000.0 ~0.21 0.00000000016 0 force @a[distance=..32]
particle flame ~0.77 ~0.0 ~-0.21 ~0.77 ~1000000000.0 ~-0.21 0.00000000016 0 force @a[distance=..32]
particle flame ~0.57 ~0.0 ~-0.57 ~0.57 ~1000000000.0 ~-0.57 0.00000000016 0 force @a[distance=..32]
particle flame ~0.21 ~0.0 ~-0.77 ~0.21 ~1000000000.0 ~-0.77 0.00000000016 0 force @a[distance=..32]
particle flame ~-0.21 ~0.0 ~-0.77 ~-0.21 ~1000000000.0 ~-0.77 0.00000000016 0 force @a[distance=..32]
particle flame ~-0.57 ~0.0 ~-0.57 ~-0.57 ~1000000000.0 ~-0.57 0.00000000016 0 force @a[distance=..32]
particle flame ~-0.77 ~0.0 ~-0.21 ~-0.77 ~1000000000.0 ~-0.21 0.00000000016 0 force @a[distance=..32]
particle flame ~-0.77 ~0.0 ~0.21 ~-0.77 ~1000000000.0 ~0.21 0.00000000016 0 force @a[distance=..32]
particle flame ~-0.57 ~0.0 ~0.57 ~-0.57 ~1000000000.0 ~0.57 0.00000000016 0 force @a[distance=..32]
particle flame ~-0.21 ~0.0 ~0.77 ~-0.21 ~1000000000.0 ~0.77 0.00000000016 0 force @a[distance=..32]
