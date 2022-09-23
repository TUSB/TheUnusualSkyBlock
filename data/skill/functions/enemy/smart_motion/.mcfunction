#SmartMotion

#TP
execute if data storage mob_data: Call{TP:1b} unless data storage mob_data: Call{KeepRotation:1b} run function smart_motion:core/tp
execute if data storage mob_data: Call{TP:1b,KeepRotation:1b} run function smart_motion:core/tp_keep_rotation

#Rotation
execute if data storage mob_data: Call.Rotation run function skill:enemy/smart_motion/rotation

#Speed
execute if data storage mob_data: Call.Speed run function skill:enemy/smart_motion/speed

#Gravity
execute if data storage mob_data: Call.Gravity run function skill:enemy/smart_motion/gravity

#Start
execute if data storage mob_data: Call{Start:1b} run tag @s add NativeTask
execute if data storage mob_data: Call{Start:1b} run tag @s add SmartMotion

#Stop
execute if data storage mob_data: Call{Stop:1b} run tag @s remove NativeTask
execute if data storage mob_data: Call{Stop:1b} run tag @s remove SmartMotion

#OnBlock
execute if data storage mob_data: Call.OnBlock run function skill:enemy/smart_motion/on_block

#E (反発係数)
execute if data storage mob_data: Call.E store result score @s sm.E run data get storage mob_data: Call.E
execute unless score @s sm.E matches -2147483648..2147483647 run scoreboard players set @s sm.E 100
