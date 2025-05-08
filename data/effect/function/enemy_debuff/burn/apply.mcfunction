#> effect:enemy_debuff/burn/apply
#
# 敵火だるま付与

#（火だるま耐性値）%の確率で失敗
execute store result score _ _ run random value 1..100
execute unless score @s BurnResistance < _ _ run return fail

tag @s add EnemyBurn
scoreboard players set @s BurnTimer 30

# 凍結していたら解除する
# execute if entity @s[tag=EnemyFreeze] run function effect:enemy_debuff/freeze/cure

function makeup:effect/enemy_debuff/burn/apply
