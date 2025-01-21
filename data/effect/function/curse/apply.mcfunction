#> effect:curse/apply
### 呪詛

# 効果中なら中断
execute if entity @s[tag=Curse] run return fail

tag @s add Curse
effect give @s bad_omen infinite 0 false
function makeup:effect/curse/apply
