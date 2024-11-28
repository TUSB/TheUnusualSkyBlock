#Function
# 0-0-0-0-0を召喚してテレポート地点を調整
    execute at @a[predicate=entity:player,distance=..64,sort=random,limit=1] rotated ~ 30 positioned ^ ^ ^-3 run function calc:geometry/tp_00000
    execute as 0-0-0-0-0 at @s unless block ^ ^ ^ #block:no_collision positioned ^ ^ ^0.25 run function settings:enemy/global/sky/shoot/lunatic_eye/back_tp_loop
    execute as 0-0-0-0-0 run function calc:set/random_rotation
    execute at 0-0-0-0-0 run tp @s ^ ^ ^ ~ ~
    data modify storage calc: Text set value '{"translate":"＊ %s はテレポートした！","with":[{"selector":"@s"}]}'
    data modify storage calc: TextLength set value 19
    function calc:show_text/actionbar
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
