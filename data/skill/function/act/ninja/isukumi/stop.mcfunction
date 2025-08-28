#> skill:act/ninja/isukumi/stop
#
# SkillNoAI汎用ファンクション

scoreboard players add @s NativeFlag 1
scoreboard players operation @s Isukumi > _ Isukumi
data modify entity @s NoAI set value true
tag @s add SkillNoAI
