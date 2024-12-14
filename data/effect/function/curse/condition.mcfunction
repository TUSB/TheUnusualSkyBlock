#> effects:curse/condition
#
# 呪詛 デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={DoomDebaria=-1..}] run function effects:curse/apply
execute if entity @s[scores={DoomDebaria=-1..}] run function makeup:effects/too_bad_effect