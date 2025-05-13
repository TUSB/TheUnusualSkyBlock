#> ai:skill/damage/apply
execute if entity @s[tag=Enemy] run function skill:damage/apply/
execute if entity @s[predicate=entity:friendly] run function ai:skill/damage/is_player
execute if data storage mob_data: Call.AEC positioned as @s run function ai:skill/damage/aec
execute if data storage mob_data: Call.MP run function ai:skill/damage/mp
