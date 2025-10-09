#> effect:enemy_debuff/freeze/cure
#
# 敵凍結解除

tag @s remove EnemyFreeze
tag @s remove NoAI
data modify entity @s NoAI set value false
scoreboard players reset @s FreezeTimer

function makeup:effect/enemy_debuff/freeze/cure
