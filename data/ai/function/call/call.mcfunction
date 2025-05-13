#> ai:call/call
execute if data storage mob_data: Call{Name:"Kill"} run tag @s add Garbage
execute if data storage mob_data: Call{Name:"Spawn"} run function ai:skill/spawn/
execute if data storage mob_data: Call{Name:"Step"} run function ai:skill/step/
execute if data storage mob_data: Call{Name:"ChangeTurn"} run function ai:skill/change_turn/
execute if data storage mob_data: Call{Name:"ChangeAI"} run function ai:skill/change_ai
execute if data storage mob_data: Call{Name:"ChangeStatus"} run function ai:skill/change_status/
execute if data storage mob_data: Call{Name:"MergeNBT"} run function ai:skill/merge_nbt
execute if data storage mob_data: Call{Name:"Teleport"} unless entity @s[tag=TargetChanged,tag=Unmoved] run function ai:skill/teleport/
execute if data storage mob_data: Call{Name:"Message"} run function ai:skill/message
execute if data storage mob_data: Call{Name:"Function"} run function ai:skill/function/
execute if data storage mob_data: Call{Name:"DelayAction"} run function ai:skill/delay_action/append/
execute if data storage mob_data: Call{Name:"Damage"} run function ai:skill/damage/
execute if data storage mob_data: Call{Name:"Blink"} run function ai:skill/blink/cast/
execute if data storage mob_data: Call{Name:"Laser"} run function ai:skill/laser/main/init
execute if data storage mob_data: Call{Name:"Rotate"} run function ai:skill/rotate
execute if data storage mob_data: Call{Name:"Heal"} run function ai:skill/heal/
execute if data storage mob_data: Call{Name:"SmartMotion"} unless entity @s[tag=TargetChanged,tag=Unmoved] run function ai:skill/smart_motion/
execute if data storage mob_data: Call{Name:"Reraise"} run function ai:skill/reraise/
execute if data storage mob_data: Call{Name:"Parabolic"} run function ai:skill/parabolic_motion/
