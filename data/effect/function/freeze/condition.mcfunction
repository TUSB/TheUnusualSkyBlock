#> effects:freeze/condition
#
# 凍結 デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={FreezeDebaria=-1..}] run function effects:freeze/apply0
execute if entity @s[scores={FreezeDebaria=-1..}] run function makeup:effects/too_bad_effect