#Function
# 0-0-0-0-0を召喚してテレポート地点を調整
    execute at @a[predicate=entity:player,distance=..64,sort=random,limit=1] rotated ~ 30 positioned ^ ^ ^-3 run function calc:geometry/tp_00000
    execute as 0-0-0-0-0 at @s unless block ^ ^ ^ #main:no_collision positioned ^ ^ ^0.25 run function settings:enemy/global/sky/shoot/lunatic_eye/back_tp_loop
    execute as 0-0-0-0-0 run function calc:set/random_rotation
    execute at 0-0-0-0-0 run tp @s ^ ^ ^ ~ ~
    execute at @s run tellraw @a[distance=..32] {"translate":"＊ %s はテレポートした！","with":[{"selector":"@s"}]}
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
