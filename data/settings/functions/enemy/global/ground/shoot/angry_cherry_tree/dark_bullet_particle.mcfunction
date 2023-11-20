#Function
# スコア設定
    execute unless score @s sm.Speed matches -2147483648..2147483647 run damage @s 0.0001
    execute unless score @s sm.Speed matches -2147483648..2147483647 run scoreboard players set @s sm.Speed 0
# 音
    playsound entity.blaze.hurt hostile @a ~ ~ ~ 0.5 0.5
# パーティクル
    particle minecraft:dust -0.75 -100000000 -0.75 1 ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..32,tag=ShowParticles]
# Markerを召喚する
    execute at @s run function calc:geometry/tp_00000
# プレイヤーを1/3追尾する
    execute as 0-0-0-0-0 facing entity @a[predicate=entity:player,sort=nearest,limit=1] eyes positioned ^ ^ ^-2 rotated as @s positioned ^ ^ ^-2 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
# 自身の向きを合わせる
    execute at @s rotated as 0-0-0-0-0 run tp @s ^ ^ ^ ~ ~
# Markerをセット
    execute as 0-0-0-0-0 at @s in area:control_area positioned 0.0 0.0 0.0 run tp @s ^ ^ ^ ~ ~
# Motion適用
    execute if entity @a[predicate=entity:player,distance=..128] as 0-0-0-0-0 at @s run tp @s ^ ^ ^0.4 ~ ~
    data modify entity @s Motion set from entity 0-0-0-0-0 Pos
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
