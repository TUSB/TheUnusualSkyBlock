#Function
function oh_my_dat:please
data modify storage mob_data: Pose set from entity @s Pose
execute unless data storage mob_data: Pose.Head run data modify entity @s Pose.Head set value [0.01f,0f,0f]
execute unless data storage mob_data: Pose.RightArm run data modify entity @s Pose.RightArm set value [0.01f,0f,0f]
execute unless data storage mob_data: Pose.LeftArm run data modify entity @s Pose.LeftArm set value [0.01f,0f,0f]
data remove storage mob_data: Pose
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.HeadTick run function settings:enemy/global/event/function/rotate_armor/schedule_head
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick run function settings:enemy/global/event/function/rotate_armor/schedule_rightarm
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.LeftArmTick run function settings:enemy/global/event/function/rotate_armor/schedule_leftarm
#Tickを1減らす
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.Tick int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.Tick 
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.Tick
execute if score _ _ matches 0 run data modify entity @s Pose.Head set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.Head
execute if score _ _ matches 0 run data modify entity @s Pose.RightArm set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArm
execute if score _ _ matches 0 run data modify entity @s Pose.LeftArm set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.LeftArm
execute if score _ _ matches 0 run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose
execute if score _ _ matches 0 run tag @s remove Rotating
execute if score _ _ matches 1.. run schedule function settings:enemy/global/event/function/rotate_armor/schedule1 1t replace
