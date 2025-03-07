#> effect:confuse/apply
### 混乱

# 効果中なら中断
execute if score @s ConfuseCount matches 0.. run return fail

scoreboard players set @s ConfuseCount 10
function makeup:effect/confuse/apply
