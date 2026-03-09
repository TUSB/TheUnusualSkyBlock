#> player:burst/orb

function settings:player/burst/add

summon experience_orb ~ ~ ~ {Tags:[BurstOrb]}
execute store result entity @n[type=experience_orb,tag=BurstOrb,distance=0] Value short 1 run scoreboard players get _ Burst
