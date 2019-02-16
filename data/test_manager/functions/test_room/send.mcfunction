execute at @s run function test_manager:test_room/spread
data merge entity @s {Motion:[0d,-10d,0d],FallDistance:-1000f}
execute at @s run tp @s ~ 27 ~
