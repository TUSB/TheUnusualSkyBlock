#SmartMotion

#TP
execute if data storage mob_data: Call{TP:1b} run function smart_motion:core/tp

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
