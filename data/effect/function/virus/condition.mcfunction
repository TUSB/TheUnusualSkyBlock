#> effect:virus/condition
#
# 病気 デバリア分岐
#
# @within function effects:too_bad_effect

execute unless entity @s[scores={DiseaseDebaria=-1..}] run function effect:virus/apply
execute if entity @s[scores={DiseaseDebaria=-1..}] run function makeup:effects/too_bad_effect
