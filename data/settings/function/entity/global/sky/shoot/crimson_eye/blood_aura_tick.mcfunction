#Function
# パーティクル
    particle flame ~ ~ ~ 1.25 0.1 1.25 0 4 force @a[distance=..16,tag=ShowParticles]
# エフェクト効果
    effect clear @a[distance=..2.5,predicate=entity:player] minecraft:fire_resistance
    effect give @a[distance=..2.5,predicate=entity:player] minecraft:slowness 5 2
    effect give @a[distance=..2.5,predicate=entity:player] minecraft:hunger 5 7
    effect give @a[distance=..2.5,predicate=entity:player] minecraft:weakness 5 3
# ダメージ
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {DamageType:[Global],DeathCause:'[{"translate":"%1$sは血に溺れてしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack
    execute as @a[distance=..2.5,predicate=entity:player,scores={ProjectileTime=0..}] run function skill:enemy/laser/main/damage
# なぜか徐々に近づいてくる……
    execute if entity @a[predicate=entity:player,distance=..16] facing entity @a[distance=..16,predicate=entity:player,sort=nearest,limit=1] feet if block ^ ^ ^0.05 #block:no_collision run tp @s ^ ^ ^0.05 ~ ~
