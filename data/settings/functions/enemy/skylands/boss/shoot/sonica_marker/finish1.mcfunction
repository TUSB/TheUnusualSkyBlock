#Function
# TP
    execute as @e[distance=..64,tag=SonicAAI] run tp @s ^ ^ ^ ~ ~
# アイテムディスプレイを実行者に
    execute as @e[type=item_display,distance=..0.01] run function settings:enemy/skylands/boss/shoot/sonica_marker/finish2
# 演出
    particle minecraft:cloud ~ ~1 ~ 0.2 0.2 0.2 0.1 30
    playsound block.fire.extinguish hostile @a ~ ~ ~ 1 0
# リセット
    function #oh_my_dat:please
