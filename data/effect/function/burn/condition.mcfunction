#> effects:burn/condition
#
# 火だるま デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={BurnDebaria=-1..}] run function effects:burn/apply
execute if entity @s[scores={BurnDebaria=-1..}] run function makeup:effects/too_bad_effect