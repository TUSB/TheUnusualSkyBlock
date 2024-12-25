#> effect:doom/condition
#
# 宣告 デバリア分岐
#
# @within function effect:too_bad_effect

execute unless entity @s[scores={DoomDebaria=-1..}] run function effect:doom/apply
execute if entity @s[scores={DoomDebaria=-1..}] run function makeup:effect/too_bad_effect
