#Function
#爆炎処理
execute if entity @s[predicate=settings:enemy/conditions/survival] run fill ^ ^ ^1 ^ ^ ^4 fire replace air

#演出音
playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.8 0.75
playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.8 0.74
playsound minecraft:enchant.thorns.hit hostile @a[distance=..32] ~ ~ ~ 0.5 0
playsound minecraft:block.respawn_anchor.set_spawn_1 hostile @a[distance=..32] ~ ~ ~ 1.5 1.5

#パーティクル
particle lava ^ ^ ^1 0.2 0.0 0.2 0 10 force @a[distance=..32,tag=ShowParticles]
particle lava ^ ^ ^2 0.2 0.0 0.2 0 10 force @a[distance=..32,tag=ShowParticles]
particle lava ^ ^ ^3 0.2 0.0 0.2 0 10 force @a[distance=..32,tag=ShowParticles]
particle lava ^ ^ ^4 0.2 0.0 0.2 0 10 force @a[distance=..32,tag=ShowParticles]
