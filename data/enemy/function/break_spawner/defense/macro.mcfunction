#> enemy:break_spawner/defense/macro
$execute as $(name) if entity @s[tag=BurstBreak] run return run function enemy:break_spawner/defense/burst_break
$execute as $(name) run return run function enemy:break_spawner/defense/normal
