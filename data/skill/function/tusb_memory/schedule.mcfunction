#as player
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{tag:{Skill:{Type:"TUSBMemory",Initializing:1b}}}]}] at @s run function item:tusb_memory/init
