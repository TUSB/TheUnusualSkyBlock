#Function
execute unless data storage mob_data: Global.ILoveEye run tellraw @a[distance=..64] {"translate":"島の封印が解かれ、アイをはめられる様になった。","color":"light_purple","bold":true}
execute unless data storage mob_data: Global.ILoveEye run tellraw @a[distance=..64] {"translate":"とあるスポナーが破壊できるようになった。","color":"light_purple","bold":true}
# data modify storage mob_data: Global.ILoveEye set value 1b
execute in area:skylands positioned -95 159 -775 run forceload add ~ ~
execute in area:skylands positioned -95 159 -775 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace barrier
execute in area:skylands positioned -95 159 -775 run playsound block.glass.break master @a ~0.5 ~0.5 ~0.5 2 0 0
execute in area:skylands positioned -95 174 -775 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace barrier
execute in area:skylands positioned -95 174 -775 run playsound block.glass.break master @a ~0.5 ~0.5 ~0.5 2 0 0
execute in area:skylands run forceload remove all
