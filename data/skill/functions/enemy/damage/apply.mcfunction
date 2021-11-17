execute if entity @s[tag=Mob] run function skill:damage/apply/
execute if entity @s[type=player] run function score_damage:api/attack
execute if data storage mob_data: Call.AEC positioned as @s run function skill:enemy/damage/aec
execute if data storage mob_data: Call.MP run function skill:enemy/damage/mp
