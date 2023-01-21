#Function
#頭のPoseをTick分だけ追加
execute store result score _ _ run data get entity @s Pose.Head[0] 100
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.HeadTick[0] 100
execute store result entity @s Pose.Head[0] float 0.01 run scoreboard players operation _ _ += _ Calc
execute store result score _ _ run data get entity @s Pose.Head[1] 100
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.HeadTick[1] 100
execute store result entity @s Pose.Head[1] float 0.01 run scoreboard players operation _ _ += _ Calc
execute store result score _ _ run data get entity @s Pose.Head[2] 100
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.HeadTick[2] 100
execute store result entity @s Pose.Head[2] float 0.01 run scoreboard players operation _ _ += _ Calc
