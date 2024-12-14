#> effect:palsy/tick
### 麻痺 時間経過

scoreboard players remove @s PalsyLevel 1
execute if score @s PalsyLevel matches 0 run function effect:palsy/cure
