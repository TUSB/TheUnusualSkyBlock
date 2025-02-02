#> effect:doom/apply
### 死の宣告

# 効果中なら中断
execute if score @s DoomCount matches 1..31 run return fail

scoreboard players set @s DoomCount 31
function makeup:effect/doom/apply
