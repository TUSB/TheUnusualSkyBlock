##############################
### ステークスファイア適用
##############################

#タグ付与
tag @s add Skill
tag @s add StakesFire
tag @s add NativeTask
execute unless entity @s[tag=StakesFailed] run tag @s add StakesSucceeded
#演出
function makeup:skill/act/hunter/stakes_fire/apply
