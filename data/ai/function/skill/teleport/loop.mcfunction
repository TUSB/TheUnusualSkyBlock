#> ai:skill/teleport/loop
execute if block ^ ^ ^ #block:no_collision run tp @s ^ ^ ^
execute unless block ^ ^ ^ #block:no_collision positioned ^ ^ ^-0.5 run function ai:skill/teleport/loop
