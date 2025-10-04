#> skill:act/hunter/stakes_fire/apply
#
# ステークスファイア適用

# タグ付与
tag @s add Skill
tag @s add StakesFire
tag @s add NativeTask
execute if entity @s[tag=!StakesFailed] run tag @s add StakesSucceeded

# ダメージをセーブ
function skill:damage/save

# 演出
function makeup:skill/act/hunter/stakes_fire/apply
