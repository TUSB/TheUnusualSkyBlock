##############################
### ステークスファイア適用
##############################

#ダメージと装備を保存
function skill:damage/save
#タグ付与
tag @s add Skill
tag @s add StakesFire
tag @s add NativeTask
execute if data storage skill: Damage{Effectiveness:0} run tag @s add StakesFailed
execute unless data storage skill: Damage{Effectiveness:0} run tag @s add StakesSucceeded
#演出
function makeup:skill/act/hunter/stakes_fire/apply
