#> ai:skill/spawn/
summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,DisabledSlots:2097151,ArmorItems:[{},{},{},{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{CustomModelData:1}}}]}
execute if data storage mob_data: Call.CountRange run function ai:skill/spawn/count_range
scoreboard players operation _ Level = @s Level
execute if data storage mob_data: Call{IsChild:1b} run function ai:skill/spawn/child
execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function ai:skill/spawn/apply
