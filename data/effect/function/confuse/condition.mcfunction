#> effect:confuse/condition
#
# 混乱 デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={ConfusionDebaria=-1..}] run function effect:confuse/apply
execute if entity @s[scores={ConfusionDebaria=-1..}] run function makeup:effect/too_bad_effect
