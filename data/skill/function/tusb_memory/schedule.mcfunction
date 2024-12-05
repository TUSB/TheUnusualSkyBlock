#> skill:tusb_memory/schedule
#as player
execute as @a[predicate=entity:player] if items entity @s container.* *[custom_data~{Skill:{Type:"TUSBMemory",Initializing:1b}}] at @s run function skill:tusb_memory/init
