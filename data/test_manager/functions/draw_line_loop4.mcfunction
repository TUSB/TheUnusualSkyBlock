


scoreboard players remove $Count Global 1
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 force
execute if score $Count Global matches 1.. positioned ^ ^ ^0.5 run function test_manager:draw_line_loop4

