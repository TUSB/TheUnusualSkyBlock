#> skill:tusb_memory/schedule
#as player
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{Skill:{Type:"TUSBMemory",Initializing:1b}}}}]}] at @s run function skill:tusb_memory/init
