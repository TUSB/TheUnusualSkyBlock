#Function
# 追尾する目的地点にMarker召喚
    function calc:geometry/tp_00001
# 乗り物に乗っている場合は殺す
    tag @s add This
    execute on vehicle run tag @s[tag=!This] add Garbage
    tag @s remove This
# Markerを召喚する
    execute at @s run function calc:geometry/tp_00000
# 目的地点に向けて1/16追尾する
    execute as 0-0-0-0-0 at @s facing entity 0-0-0-0-1 feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-15 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
# 上下が壁の場合、それを回避する
    execute as 0-0-0-0-0 at @s unless block ~ ~-0.5 ~ #block:no_collision run tp @s ^ ^ ^ ~ ~-5
    execute as 0-0-0-0-0 at @s unless block ~ ~3 ~ #block:no_collision run tp @s ^ ^ ^ ~ ~5
# 進行方向が壁だった場合、それを回避する
    execute as 0-0-0-0-0 at @s unless block ^ ^ ^0.2 #block:no_collision run tp @s ^ ^ ^ ~5 ~-5
    execute as 0-0-0-0-0 at @s unless block ^ ^ ^0.2 #block:no_collision run tp @s ^ ^ ^ ~5 ~-5
# 乱数取得
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 20
    scoreboard players operation _ Random %= _ _
# 向きを適当に変える
    execute if score _ Random matches 0 as 0-0-0-0-0 at @s run tp @s ^ ^ ^ ~6 ~6
    execute if score _ Random matches 1 as 0-0-0-0-0 at @s run tp @s ^ ^ ^ ~-6 ~-6
    execute if score _ Random matches 2 as 0-0-0-0-0 at @s run tp @s ^ ^ ^ ~6 ~-6
    execute if score _ Random matches 3 as 0-0-0-0-0 at @s run tp @s ^ ^ ^ ~-6 ~6
# 自身の向きを合わせる
    execute at @s rotated as 0-0-0-0-0 run tp @s ^ ^ ^ ~ ~
# Markerをセット
    execute as 0-0-0-0-0 at @s in area:control_area positioned 0.0 0.0 0.0 run tp @s ^ ^ ^ ~ ~
# Motion適用
    execute if entity @a[predicate=entity:player,distance=..64] as 0-0-0-0-0 at @s run tp @s ^ ^ ^0.175 ~ ~
    data modify entity @s Motion set from entity 0-0-0-0-0 Pos
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
    execute as 0-0-0-0-1 run function calc:geometry/return_marker
