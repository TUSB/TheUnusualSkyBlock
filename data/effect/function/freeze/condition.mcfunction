#> effect:freeze/condition
#
# 凍結 デバリア分岐
#
# @within function effect:too_bad_effect

execute unless entity @s[scores={FreezeDebaria=-1..}] run function effect:freeze/apply0
execute if entity @s[scores={FreezeDebaria=-1..}] run function makeup:effect/too_bad_effect
