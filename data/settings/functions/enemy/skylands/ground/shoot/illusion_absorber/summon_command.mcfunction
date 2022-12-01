#Function
execute store result score _ _ if entity @e[tag=AbsorberVex_C,distance=..64]
execute if score _ _ matches ..5 run function settings:enemy/skylands/ground/shoot/illusion_absorber/summon_direction
