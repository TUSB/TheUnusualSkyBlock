##############################
### キャプチャー
##############################

teleport @a[distance=..8,gamemode=!spectetor,gamemode=!creative] @s
effect give @a[distance=..8,gamemode=!spectetor,gamemode=!creative] minecraft:slow_falling 15 0 false
##演出開始##
playsound minecraft:entity.bat.takeoff master @a 1 0.3
##演出終了##