#Targetを向いたときの向きを保存、元に戻す
execute facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
data modify storage mob_data: Rotation set from entity @s Rotation
execute positioned as @s run tp @s ~ ~ ~ ~ ~
#負の値のときは正確にTargetの向きに合わせる
#Horizontal
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Rotate.Horizontal 100
execute if score _ _ matches ..-1 run data modify entity @s Rotation[0] set from storage mob_data: Rotation[0]
execute if score _ _ matches 1.. run function enemy:ai/move/rotate/horizontal
#Vertical
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Rotate.Vertical 100
execute if score _ _ matches ..-1 run data modify entity @s Rotation[1] set from storage mob_data: Rotation[1]
execute if score _ _ matches 1.. run function enemy:ai/move/rotate/vertical
