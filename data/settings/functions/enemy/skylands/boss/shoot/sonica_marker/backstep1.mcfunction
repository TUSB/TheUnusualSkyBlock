#Function
# アイテムディスプレイを実行者に
    execute at @e[distance=..18,tag=SonicAAI] as @e[type=item_display,distance=..0.01] run function settings:enemy/skylands/boss/shoot/sonica_marker/backstep2
# 音
    playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 2.0 1.5 0.0
# スコアセット
    scoreboard players set @s MP 0
