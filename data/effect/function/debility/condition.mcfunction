#> effect:debility/condition
#
# 衰弱 デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={DoomDebaria=-1..}] run function effect:debility/apply
execute if entity @s[scores={DoomDebaria=-1..}] run function makeup:effect/too_bad_effect
