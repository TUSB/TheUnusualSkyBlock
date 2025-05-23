#Function
# アイテムディスプレイを実行者に
    execute as @e[type=item_display,distance=..0.1] run tag @s add Garbage
# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
    playsound entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 1 1
# ボスドロ召喚
    loot spawn ~0.5 ~ ~0.5 loot item:item/iron_sword/sonic_sword
    execute positioned ~0.5 ~ ~0.5 run data merge entity @n[type=item,distance=0] {NoGravity:1b,Glowing:1b,Health:32767}
    loot spawn ~-0.5 ~ ~-0.5 loot item:item/leather_chestplate/wardenium_armor
    execute positioned ~-0.5 ~ ~-0.5 run data merge entity @n[type=item,distance=0] {NoGravity:1b,Glowing:1b,Health:32767}
# アイポータル召喚
    data modify storage main: System.Islands.Chaos.007 set value 1b
    setblock 226 309 -923 end_portal_frame replace
    setblock 226 310 -923 air destroy
