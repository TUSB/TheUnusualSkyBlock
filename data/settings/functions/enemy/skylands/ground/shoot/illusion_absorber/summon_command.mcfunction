#Function
execute store result score _ _ if entity @e[type=vex,distance=..64,tag=AbsorberVex_C]
execute if score _ _ matches ..5 run function settings:enemy/skylands/ground/shoot/illusion_absorber/summon_direction
