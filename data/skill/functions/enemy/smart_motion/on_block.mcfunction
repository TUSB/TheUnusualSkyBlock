#SmartMotion

#OnBlock
tag @s remove Break
tag @s remove Stick
tag @s remove Bounce
execute if data storage mob_data: Call{OnBlock:"Break"} run tag @s add Break
execute if data storage mob_data: Call{OnBlock:"Stick"} run tag @s add Stick
execute if data storage mob_data: Call{OnBlock:"Bounce"} run tag @s add Bounce
