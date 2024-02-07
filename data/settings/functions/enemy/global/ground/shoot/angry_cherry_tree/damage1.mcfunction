#Function
# 対象となるプレイヤー・Friendlyを特定
    data modify storage mob_data: MobName set from entity @s CustomName
    execute as @e[distance=..2,predicate=entity:friendly] if entity @s[type=player] run function settings:enemy/global/ground/shoot/angry_cherry_tree/damage2
    execute as @e[distance=..2,predicate=entity:friendly] unless entity @s[type=player] run function settings:enemy/global/ground/shoot/angry_cherry_tree/damage3
# 演出
    particle dust -0.75 -100000000 -0.75 1.2 ~ ~2 ~ 1 3 1 0 150 force @a[distance=..32,tag=ShowParticles]
    particle dust -0.75 -100000000 -0.75 1.2 ~ ~4 ~ 0.25 6 0.25 0 150 force @a[distance=..32,tag=ShowParticles]
    particle large_smoke ~ ~ ~ 0 0 0 0.25 30 force @a[distance=..32,tag=ShowParticles]
    playsound entity.generic.extinguish_fire hostile @a[distance=..32] ~ ~ ~ 1 0 0
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.99 0
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound block.respawn_anchor.set_spawn hostile @a[distance=..32] ~ ~ ~ 1 2 0
