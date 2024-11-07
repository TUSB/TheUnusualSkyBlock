#Function
# パーティクル
    particle minecraft:falling_dust redstone_block ~ ~0.65 ~ 0.1 0.1 0.1 1 2 force @a[distance=..32,tag=ShowParticles]
    particle minecraft:dust 100000000 0.5 0 1 ~ ~0.65 ~ 0.1 0.1 0.1 1 1 force @a[distance=..32,tag=ShowParticles]
# 乗り物に乗っている場合は殺す
    tag @s add This
    execute on vehicle run tag @s[tag=!This] add Garbage
    tag @s remove This
# Markerを召喚する
    execute at @s run function calc:geometry/tp_00000
# プレイヤーを1/6追尾する
    execute as 0-0-0-0-0 facing entity @a[predicate=entity:player,sort=nearest,limit=1] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-5 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
# 上下が壁の場合、それを回避する
    execute as 0-0-0-0-0 at @s unless block ~ ~-0.5 ~ #block:no_collision run tp @s ^ ^ ^ ~ ~-5
    execute as 0-0-0-0-0 at @s unless block ~ ~2 ~ #block:no_collision run tp @s ^ ^ ^ ~ ~5
# 進行方向が壁だった場合、それを回避する
    execute as 0-0-0-0-0 at @s positioned ~ ~0.85 ~ unless block ^ ^ ^0.3 #block:no_collision positioned ~ ~-0.85 ~ run tp @s ^ ^ ^ ~5 ~-5
    execute as 0-0-0-0-0 at @s positioned ~ ~0.85 ~ unless block ^ ^ ^0.2 #block:no_collision positioned ~ ~-0.85 ~ run tp @s ^ ^ ^ ~5 ~-5
# 自身の向きを合わせる
    execute rotated as 0-0-0-0-0 run tp @s ^ ^ ^ ~ ~
# Markerをセット
    execute as 0-0-0-0-0 at @s in area:control_area positioned 0.0 0.0 0.0 run tp @s ^ ^ ^ ~ ~
# HP判定
    data modify entity @s Tags set from storage mob_data: Tags
    execute unless entity @s[tag=HalfHP] run function settings:enemy/global/sky/shoot/crimson_eye/hp_check
# Motion適用
    execute if entity @a[predicate=entity:player,distance=..64] unless entity @s[tag=HalfHP] as 0-0-0-0-0 at @s run tp @s ^ ^ ^0.2 ~ ~
    execute if entity @a[predicate=entity:player,distance=..64] if entity @s[tag=HalfHP] as 0-0-0-0-0 at @s run tp @s ^ ^ ^0.3 ~ ~
    data modify entity @s Motion set from entity 0-0-0-0-0 Pos
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
