execute if entity @s[tag=Enemy] run function skill:damage/apply/
execute if entity @s[predicate=entity:friendly] run function skill:enemy/damage/is_player
execute if data storage mob_data: Call.AEC positioned as @s run function skill:enemy/damage/aec
execute if data storage mob_data: Call.MP run function skill:enemy/damage/mp
