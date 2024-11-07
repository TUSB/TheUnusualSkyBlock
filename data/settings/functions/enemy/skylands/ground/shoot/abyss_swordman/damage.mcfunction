#Function
# Markerを召喚
    function calc:geometry/tp_00000
# Markerをつかって、近くのプレイヤーのランダムな位置にてレポートする
    execute at @a[predicate=entity:player,distance=..32,sort=nearest,limit=1] run function calc:geometry/tp_00000
    execute as 0-0-0-0-0 at @s run function calc:set/random_rotation
    execute as 0-0-0-0-0 at @s rotated ~ 0 positioned ~ ~0.1 ~ run tp @s ^ ^ ^3 ~ 0
    execute at 0-0-0-0-0 if block ~ ~ ~ #block:no_collision unless block ~ ~-1 ~ #block:no_collision run tp @s ~ ~ ~
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 演出
   execute at @s run particle dust -1 0 -1 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 force @a[distance=..32]
   execute at @s run particle witch ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a[distance=..32]
   execute at @s run playsound entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 1 1.5 0.01
   execute at @s run playsound entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 1 1.55 0.01
