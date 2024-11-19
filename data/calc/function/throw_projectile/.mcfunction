#> calc:throw_projectile/
###保存するMotionと同じPosでこのfunctionを実行する
#Motionを保存
execute in area:control_area facing 0.0 0.0 0.0 facing ^ ^ ^-1 run function calc:geometry/tp_00000
data modify entity @s Motion set from entity 0-0-0-0-0 Pos
#Rotationをスコアに保存 真上or真下のときは初回判定スキップ
execute store result score __ _ run data get entity 0-0-0-0-0 Rotation[1] 10
execute if score __ _ matches -899..898 store result score @s[type=arrow] ArrowRotation run data get entity 0-0-0-0-0 Rotation[0] -1
scoreboard players reset __ _
