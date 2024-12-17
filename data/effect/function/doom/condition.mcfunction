#> effect:doom/condition
#
# 宣告 デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={DoomDebaria=-1..}] run function effects:doom/apply
execute if entity @s[scores={DoomDebaria=-1..}] run function makeup:effects/too_bad_effect
