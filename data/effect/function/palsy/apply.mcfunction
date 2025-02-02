#> effect:palsy/apply
### 麻痺

# 効果中なら中断
execute if score @s PalsyLevel matches 0.. run return fail

scoreboard players set _ _ 40
scoreboard players operation @s PalsyLevel > _ _

function makeup:effect/palsy/apply
