#Function
#Markerを召喚する
execute at @s run function calc:geometry/tp_00000
#プレイヤーを1/8追尾する
execute as 0-0-0-0-0 facing entity @a[predicate=entity:player,sort=nearest,limit=1] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-7 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
#上下が壁の場合、それを回避する
execute as 0-0-0-0-0 at @s unless block ~ ~-0.5 ~ #main:no_collision run tp @s ^ ^ ^ ~ ~-40
execute as 0-0-0-0-0 at @s unless block ~ ~2 ~ #main:no_collision run tp @s ^ ^ ^ ~ ~40
#進行方向が壁だった場合、それを回避する
execute as 0-0-0-0-0 at @s positioned ~ ~0.85 ~ unless block ^ ^ ^0.3 #main:no_collision positioned ~ ~-0.85 ~ run tp @s ^ ^ ^ ~30 ~-30
execute as 0-0-0-0-0 at @s positioned ~ ~0.85 ~ unless block ^ ^ ^0.2 #main:no_collision positioned ~ ~-0.85 ~ run tp @s ^ ^ ^ ~30 ~-30
#自身の向きを合わせる
execute rotated as 0-0-0-0-0 run tp @s ^ ^ ^ ~ ~
#Markerをセット
execute as 0-0-0-0-0 at @s in area:control_area positioned 0.0 0.0 0.0 run tp @s ^ ^ ^ ~ ~
#Motion適用
execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^0.15 ~ ~
data modify entity @s Motion set from entity 0-0-0-0-0 Pos
#Marker返却
execute as 0-0-0-0-0 run function calc:geometry/return_marker
