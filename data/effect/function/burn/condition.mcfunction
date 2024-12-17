#> effect:burn/condition
#
# 火だるま デバリア分岐
#
# @within function effect:too_bad_effect

execute unless entity @s[scores={BurnDebaria=-1..}] run function effect:burn/apply
execute if entity @s[scores={BurnDebaria=-1..}] run function makeup:effect/too_bad_effect
