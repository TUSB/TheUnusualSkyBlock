#> ai:call/trigger/attack/projectile_source
execute store result score _ _ run data get entity @s UUID[0]
execute if score _ Calc = _ _ run function ai:call/trigger/attack/trigger
