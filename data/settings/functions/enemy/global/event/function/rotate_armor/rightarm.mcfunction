#Function
#右腕のPoseを保存する
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RightArm set from entity @s Pose.RightArm
#初期化処理
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick set value [0f,0f,0f]
execute unless data storage mob_data: Call.Pose.RightArmPlus run data modify storage mob_data: Call.Pose.RightArmPlus set value [2b,2b,2b]
execute store result score # Calc run data get storage mob_data: Call.Tick
#rxの計算
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RightArm[0] 100
execute store result score _ Calc run data get storage mob_data: Call.Pose.RightArm[0] 100
execute store result score # _ run data get storage mob_data: Call.Pose.RightArmPlus[0] 1
execute if score # _ matches 2 run function settings:enemy/global/event/function/rotate_armor/which
execute if score # _ matches 1 if score _ _ > _ Calc run scoreboard players add _ Calc 36000
execute if score # _ matches 0 if score _ _ < _ Calc run scoreboard players add _ _ 36000
execute if score # _ matches 1 run scoreboard players operation _ Calc -= _ _
execute if score # _ matches 0 run scoreboard players operation _ _ -= _ Calc
execute if score # _ matches 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick[0] float 0.01 run scoreboard players operation _ Calc /= # Calc
execute if score # _ matches 0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick[0] float -0.01 run scoreboard players operation _ _ /= # Calc
#ryの計算
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RightArm[1] 100
execute store result score _ Calc run data get storage mob_data: Call.Pose.RightArm[1] 100
execute store result score # _ run data get storage mob_data: Call.Pose.RightArmPlus[1] 1
execute if score # _ matches 2 run function settings:enemy/global/event/function/rotate_armor/which
execute if score # _ matches 1 if score _ _ > _ Calc run scoreboard players add _ Calc 36000
execute if score # _ matches 0 if score _ _ < _ Calc run scoreboard players add _ _ 36000
execute if score # _ matches 1 run scoreboard players operation _ Calc -= _ _
execute if score # _ matches 0 run scoreboard players operation _ _ -= _ Calc
execute if score # _ matches 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick[1] float 0.01 run scoreboard players operation _ Calc /= # Calc
execute if score # _ matches 0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick[1] float -0.01 run scoreboard players operation _ _ /= # Calc
#rzの計算
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RightArm[2] 100
execute store result score _ Calc run data get storage mob_data: Call.Pose.RightArm[2] 100
execute store result score # _ run data get storage mob_data: Call.Pose.RightArmPlus[2] 1
execute if score # _ matches 2 run function settings:enemy/global/event/function/rotate_armor/which
execute if score # _ matches 1 if score _ _ > _ Calc run scoreboard players add _ Calc 36000
execute if score # _ matches 0 if score _ _ < _ Calc run scoreboard players add _ _ 36000
execute if score # _ matches 1 run scoreboard players operation _ Calc -= _ _
execute if score # _ matches 0 run scoreboard players operation _ _ -= _ Calc
execute if score # _ matches 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick[2] float 0.01 run scoreboard players operation _ Calc /= # Calc
execute if score # _ matches 0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArmTick[2] float -0.01 run scoreboard players operation _ _ /= # Calc
#右腕のPoseを再保存する
#tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.Tick"}]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.RightArm set from storage mob_data: Call.Pose.RightArm
