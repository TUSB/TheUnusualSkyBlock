#> skill:act/hunter/stakes_fire/apply
#
# ステークスファイア適用

# タグ付与
tag @s add Skill
tag @s add StakesFire
tag @s add NativeTask
execute if data storage skill: damage{effectiveness:50} run tag @s add StakesFailed
execute unless data storage skill: damage{effectiveness:50} run tag @s add StakesSucceeded

# 演出
function makeup:skill/act/hunter/stakes_fire/apply
