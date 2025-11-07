#> effect:enemy_debuff/fear/apply
#
# 敵畏怖付与

#（畏怖耐性値）%の確率で失敗
execute store result score _ _ run random value 1..100
execute unless score @s FearResistance < _ _ run return fail

tag @s add EnemyFear
scoreboard players set @s FearTimer 10

function makeup:effect/enemy_debuff/fear/apply
