#Function
data modify storage mob_data: Call set value {Name:"Step",Speed:1d}
execute as @s facing entity @e[distance=..40,limit=1,sort=nearest,tag=Enemy,tag=!Trap] eyes run function enemy:ai/call/call
