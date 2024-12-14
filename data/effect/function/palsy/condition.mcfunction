#> effects:palsy/condition
#
# 麻痺 デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={ParalysisDebaria=-1..}] run function effects:palsy/apply
execute if entity @s[scores={ParalysisDebaria=-1..}] run function makeup:effects/too_bad_effect
