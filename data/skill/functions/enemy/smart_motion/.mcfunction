#SmartMotion

#TP
execute if data storage mob_data: Call{TP:1b} run function smart_motion:core/tp

#Speed
execute if data storage mob_data: Call.Speed.Set store result score @s sm.Speed run data get storage mob_data: Call.Speed.Set
execute if data storage mob_data: Call.Speed.Add store result score _ _ run data get storage mob_data: Call.Speed.Add
execute if data storage mob_data: Call.Speed.Add run scoreboard players operation @s sm.Speed += _ _

#Gravity
execute if data storage mob_data: Call.Gravity.Set store result score @s sm.Gravity run data get storage mob_data: Call.Gravity.Set
execute if data storage mob_data: Call.Gravity.Add store result score _ _ run data get storage mob_data: Call.Gravity.Add
execute if data storage mob_data: Call.Gravity.Add run scoreboard players operation @s sm.Gravity += _ _

#Start
execute if data storage mob_data: Call{Start:1b} run tag @s add NativeTask
execute if data storage mob_data: Call{Start:1b} run tag @s add SmartMotion

#Stop
execute if data storage mob_data: Call{Stop:1b} run tag @s remove NativeTask
execute if data storage mob_data: Call{Stop:1b} run tag @s remove SmartMotion

#OnBlock
execute if data storage mob_data: Call.OnBlock run function skill:enemy/smart_motion/on_block
