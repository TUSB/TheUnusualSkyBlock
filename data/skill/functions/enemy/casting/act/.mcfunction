scoreboard players add @s CastingTick 1
execute if score @s CastingTick >= @s NextCastingTick run function skill:enemy/casting/act/check/
execute unless data storage mob_data: Casting[0] run function skill:enemy/casting/act/bit_drop