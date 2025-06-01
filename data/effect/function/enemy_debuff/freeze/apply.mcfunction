#> effect:enemy_debuff/freeze/apply
#
# 敵凍結付与

# 解除条件を満たしていれば失敗
execute unless predicate effect:freeze run return fail
execute if score @s BurnTimer matches 1.. run return fail

#（凍結耐性値）%の確率で失敗
execute store result score _ _ run random value 1..100
execute unless score @s FreezeResistance < _ _ run return fail

tag @s add EnemyFreeze
tag @s add NoAI
data modify entity @s NoAI set value true
scoreboard players set @s FreezeTimer 3

function makeup:effect/enemy_debuff/freeze/apply
