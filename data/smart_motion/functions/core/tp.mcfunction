#実行位置にTPさせ、予測座標を現tickに合わせる
tp @s ~ ~ ~ ~ ~
execute store result score @s sm.X run data get entity @s Pos[0] 100
execute store result score @s sm.Y run data get entity @s Pos[1] 100
execute store result score @s sm.Z run data get entity @s Pos[2] 100
execute store result score @s sm.RotationX run data get entity @s Rotation[0] 100
execute store result score @s sm.RotationY run data get entity @s Rotation[1] 100
#アーマースタンドのY方向Pose補正
execute if entity @s[type=armor_stand,tag=!sm.KeepPose] run function smart_motion:core/update_pose
