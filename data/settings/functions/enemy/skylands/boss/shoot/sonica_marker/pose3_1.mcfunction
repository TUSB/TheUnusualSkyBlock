#Function
# アイテムディスプレイを実行者に
    execute at @e[distance=..18,tag=SonicAAI] as @e[type=item_display,distance=..0.01] run function settings:enemy/skylands/boss/shoot/sonica_marker/pose3_2
# 音
    playsound entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 0.6 1.8
    playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 1 0.4
    playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 1 0
    playsound entity.witch.throw hostile @a[distance=..32] ~ ~ ~ 1.5 0.5
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.25 1.5
