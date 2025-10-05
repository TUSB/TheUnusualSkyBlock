#> skill:act/ninja/isukumi/end
#
# SkillNoAI解除汎用

scoreboard players reset @s Isukumi
data modify entity @s[tag=!NoAI] NoAI set value false
tag @s remove SkillNoAI
