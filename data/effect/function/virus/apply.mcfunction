#> effect:virus/apply
### 病気

# 効果中なら中断
execute if score @s VirusCount matches 0.. run return fail

scoreboard players set @s VirusCount 90
function makeup:effect/virus/apply
