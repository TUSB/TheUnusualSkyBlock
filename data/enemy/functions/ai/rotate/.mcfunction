#Targetを向いたときの向きを保存
execute facing entity @s feet facing ^ ^ ^-1 positioned as @s run function calc:geometry/tp_00000
data modify storage mob_data: Rotation set from entity 0-0-0-0-0 Rotation
execute as 0-0-0-0-0 run function calc:geometry/return_marker
#負の値のときは正確にTargetの向きに合わせる
#Horizontal
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Rotate[0] 100
execute if score _ _ matches ..-1 run data modify entity @s Rotation[0] set from storage mob_data: Rotation[0]
execute if score _ _ matches 1.. run function enemy:ai/rotate/horizontal
#Vertical
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Rotate[1] 100
execute if score _ _ matches ..-1 run data modify entity @s Rotation[1] set from storage mob_data: Rotation[1]
execute if score _ _ matches 1.. run function enemy:ai/rotate/vertical
