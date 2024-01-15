#Function
#0-0-0-0-0を召喚してテレポート地点を調整
    function calc:geometry/tp_00000
    execute at 0-0-0-0-0 run tp @s ^ ^ ^ ~ ~
    execute as 0-0-0-0-0 at @s unless block ^ ^ ^ #main:no_collision positioned ^ ^ ^0.25 run function settings:enemy/global/sky/shoot/lunatic_eye/back_tp_loop
    execute at @s run title @a[distance=..32] actionbar {"translate":"＊ %s はテレポートした！","with":[{"selector":"@s"}]}
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
