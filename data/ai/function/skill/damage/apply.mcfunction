#> ai:skill/damage/apply
execute if entity @s[tag=Mob] run data modify storage entity: damage set from storage mob_data: Call.Mob
execute if entity @s[type=player] run function ai:skill/damage/is_player
function entity:damage/apply/
execute if data storage mob_data: Call.AEC positioned as @s run function ai:skill/damage/aec
execute if data storage mob_data: Call.MP run function ai:skill/damage/mp
