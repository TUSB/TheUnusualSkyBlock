#Function
#左腕のPoseをTick分だけ追加
execute store result score _ _ run data get entity @s Pose.LeftArm[0] 100
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.LeftArmTick[0] 100
execute store result entity @s Pose.LeftArm[0] float 0.01 run scoreboard players operation _ _ += _ Calc
execute store result score _ _ run data get entity @s Pose.LeftArm[1] 100
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.LeftArmTick[1] 100
execute store result entity @s Pose.LeftArm[1] float 0.01 run scoreboard players operation _ _ += _ Calc
execute store result score _ _ run data get entity @s Pose.LeftArm[2] 100
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.LeftArmTick[2] 100
execute store result entity @s Pose.LeftArm[2] float 0.01 run scoreboard players operation _ _ += _ Calc
