#> effect:palsy/condition
#
# 麻痺 デバリア分岐
#
# @within function effect:too_bad_effect

execute unless entity @s[scores={ParalysisDebaria=-1..}] run function effect:palsy/apply
execute if entity @s[scores={ParalysisDebaria=-1..}] run function makeup:effect/too_bad_effect
