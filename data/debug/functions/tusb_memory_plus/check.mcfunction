#> debug:tusb_memory_plus/check

execute if data storage skill: TUSBM.Job at @e[tag=TUSBMemory_Adding] as @p in area:control_area run function debug:tusb_memory_plus/show_skill

execute if data storage skill: TUSBM.Skill as @e[tag=TUSBMemory_Adding] at @s run function debug:tusb_memory_plus/check_type

execute if data storage skill: TUSBM.ActTrigger as @e[tag=TUSBMemory_Adding] at @s run function debug:tusb_memory_plus/set_trigger

execute if score #TUSBメモリーの回数を指定して実行！ _ = #TUSBメモリーの回数を指定して実行！ _ as @e[tag=TUSBMemory_Adding] at @s run function debug:tusb_memory_plus/set_count

execute if entity @e[tag=TUSBMemory_Adding] run schedule function debug:tusb_memory_plus/check 1t
