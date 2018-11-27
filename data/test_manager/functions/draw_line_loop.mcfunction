


scoreboard players remove $Count Global 1
particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Count Global matches 1.. positioned ^ ^ ^0.5 run function test_manager:draw_line_loop

