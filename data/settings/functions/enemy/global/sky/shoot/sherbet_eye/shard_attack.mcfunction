#Function
# 演出
    playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.6 2 0
    playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.6 1.8 0
    playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.6 1.6 0
    playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.6 1.4 0
    playsound ambient.crimson_forest.shine_3 hostile @a[distance=..32] ~ ~ ~ 0.5 2 0
    playsound ambient.crimson_forest.shine_3 hostile @a[distance=..32] ~ ~ ~ 0.5 1.95 0
    playsound minecraft:item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.7 2 0
    particle dust 1 1 100000000 1 ~ ~2 ~ 0.5 2 0.5 0 100 force @a[distance=..32,tag=ShowParticles]
    particle item ice ~ ~ ~ 0 0 0 0.75 20 force @a[distance=..32,tag=ShowParticles]
# 攻撃効果
    data modify storage mob_data: MobName set from entity @s CustomName
    execute as @e[distance=..1.5,predicate=entity:friendly,sort=nearest,limit=1] if entity @s[type=player] run function settings:enemy/global/sky/shoot/sherbet_eye/attack2
    execute as @e[distance=..1.5,predicate=entity:friendly,sort=nearest,limit=1] unless entity @s[type=player] run function settings:enemy/global/sky/shoot/sherbet_eye/attack3
# Killする
    data modify storage mob_data: Tags append value "Garbage"
