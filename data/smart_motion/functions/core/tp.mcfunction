#実行位置にTPさせ、予測座標を現tickに合わせる
tp @s ~ ~ ~ ~ ~
execute store result score @s sm.X run data get entity @s Pos[0] 100
execute store result score @s sm.Y run data get entity @s Pos[1] 100
execute store result score @s sm.Z run data get entity @s Pos[2] 100
#アーマースタンドのY方向Pose補正
data modify storage calc: List set value [0f,0f,0f]
execute store result storage calc: List[0] float 0.5 run data get entity @s Rotation[1]
data modify entity @s[type=armor_stand] Pose.Head set from storage calc: List
