#> area:system/void/teleport1
#縦穴のID
# 00  01  02  03  04  05
#   24  25  26  27  28
# 06  07  08  09  10  11
#   29  30  31  32  33
# 12  13  14  15  16  17
#   34  35  36  37  38
# 18  19  20  21  22  23

#左端にTP
tp @s -401.0 320 1625.0
execute if score _ Calc matches 06..11 at @s run tp @s ~ ~ ~282
execute if score _ Calc matches 12..17 at @s run tp @s ~ ~ ~564
execute if score _ Calc matches 18..23 at @s run tp @s ~ ~ ~846
execute if score _ Calc matches 24..28 at @s run tp @s ~80 ~ ~141
execute if score _ Calc matches 29..33 at @s run tp @s ~80 ~ ~423
execute if score _ Calc matches 34..38 at @s run tp @s ~80 ~ ~705

#右にTP
execute if score _ Calc matches 0..23 run scoreboard players set _ _ 6
execute if score _ Calc matches 24..38 run scoreboard players set _ _ 5
scoreboard players operation _ Calc %= _ _
execute if score _ Calc matches 1 at @s run tp @s ~160 ~ ~
execute if score _ Calc matches 2 at @s run tp @s ~320 ~ ~
execute if score _ Calc matches 3 at @s run tp @s ~480 ~ ~
execute if score _ Calc matches 4 at @s run tp @s ~640 ~ ~
execute if score _ Calc matches 5 at @s run tp @s ~800 ~ ~

#spreadplayersしてY255の天井下にTP
execute at @s run spreadplayers ~ ~ 0 40 false @s
execute at @s run tp @s ~ ~-75 ~

#プレイヤーTP、返却
tp @a[distance=0,limit=1] @s
function calc:geometry/return_marker
