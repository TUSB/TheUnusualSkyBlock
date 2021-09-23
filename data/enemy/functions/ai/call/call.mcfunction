execute if data storage mob_data: Call{Name:"Kill"} run tag @s add Garbage
execute if data storage mob_data: Call{Name:"Spawn"} run function skill:enemy/spawn
execute if data storage mob_data: Call{Name:"Step"} run function skill:enemy/step
