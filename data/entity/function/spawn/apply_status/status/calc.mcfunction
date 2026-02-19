#> entity:spawn/apply_status/status/calc
# 
# baseStatus + status * Level
# 
# _ _ = baseStatus
# _ Calc = status
# @s Level = Level
#

scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ _ += _ Calc
scoreboard players set _ Calc 100
return run scoreboard players operation _ _ /= _ Calc
