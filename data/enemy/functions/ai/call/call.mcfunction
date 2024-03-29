execute if data storage mob_data: Call{Name:"Kill"} run tag @s add Garbage
execute if data storage mob_data: Call{Name:"Spawn"} run function skill:enemy/spawn/
execute if data storage mob_data: Call{Name:"Step"} run function skill:enemy/step/
execute if data storage mob_data: Call{Name:"ChangeTurn"} run function skill:enemy/change_turn/
execute if data storage mob_data: Call{Name:"ChangeMove"} run function skill:enemy/change_move/
execute if data storage mob_data: Call{Name:"ChangeAI"} run function skill:enemy/change_ai
execute if data storage mob_data: Call{Name:"ChangeStatus"} run function skill:enemy/change_status/
execute if data storage mob_data: Call{Name:"MergeNBT"} run function skill:enemy/merge_nbt
execute if data storage mob_data: Call{Name:"Teleport"} unless entity @s[tag=TargetChanged,tag=Unmoved] run function skill:enemy/teleport/
execute if data storage mob_data: Call{Name:"Message"} run function skill:enemy/message
execute if data storage mob_data: Call{Name:"Function"} run function skill:enemy/function/
execute if data storage mob_data: Call{Name:"DelayAction"} run function skill:enemy/delay_action/append/
execute if data storage mob_data: Call{Name:"Damage"} run function skill:enemy/damage/
execute if data storage mob_data: Call{Name:"Blink"} run function skill:enemy/blink/cast/
execute if data storage mob_data: Call{Name:"Laser"} run function skill:enemy/laser/main/init
execute if data storage mob_data: Call{Name:"Rotate"} run function skill:enemy/rotate
execute if data storage mob_data: Call{Name:"Heal"} run function skill:enemy/heal/
execute if data storage mob_data: Call{Name:"SmartMotion"} unless entity @s[tag=TargetChanged,tag=Unmoved] run function skill:enemy/smart_motion/
execute if data storage mob_data: Call{Name:"Reraise"} run function skill:enemy/reraise/
execute if data storage mob_data: Call{Name:"Parabolic"} run function skill:enemy/parabolic_motion/