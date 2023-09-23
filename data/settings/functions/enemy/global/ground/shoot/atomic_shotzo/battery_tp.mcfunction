#Function
# 自身のX軸回転を調整
    tp @s ^ ^ ^ ~ 0
# アイテムディスプレイを回転させる為の計算
# Markerを召喚する
    function calc:geometry/tp_00000
    execute store result score _ _ run data get entity 0-0-0-0-0 Rotation[1] 100
# 角度は0 ~ 90度になるようにしてから導入
    scoreboard players set _ Calc 0
    scoreboard players operation _ _ < _ Calc
    scoreboard players set _ Calc -9000
    execute store result entity @s Rotation[1] float 0.01 run scoreboard players operation _ _ > _ Calc
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
