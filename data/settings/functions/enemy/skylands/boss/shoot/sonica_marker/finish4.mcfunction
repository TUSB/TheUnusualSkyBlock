#Function
# アイテムディスプレイを実行者に
    execute as @e[type=item_display,distance=..0.1] run tag @s add Garbage
# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
    playsound entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 1 1
