#> effect:palsy/check
### 麻痺 チェック

execute store result score _ _ run function calc:random
scoreboard players set _ Calc 100
scoreboard players operation _ _ %= _ Calc

execute if score _ _ < @s PalsyLevel run function effects:palsy/fail
