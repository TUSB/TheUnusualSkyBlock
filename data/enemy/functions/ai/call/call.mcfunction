execute if data storage mob_data: Call{Name:"Kill"} run tag @s add Garbage
execute if data storage mob_data: Call{Name:"Spawn"} run function skill:enemy/spawn/
execute if data storage mob_data: Call{Name:"Step"} run function skill:enemy/step/
execute if data storage mob_data: Call{Name:"ChangeTurn"} run function skill:enemy/change_turn/
execute if data storage mob_data: Call{Name:"MergeNBT"} run function skill:enemy/merge_nbt
execute if data storage mob_data: Call{Name:"Teleport"} run function skill:enemy/teleport
