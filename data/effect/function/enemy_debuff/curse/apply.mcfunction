#> effect:enemy_debuff/curse/apply
#
# 敵呪蝕付与

# 呪蝕適用判定
execute if score @s Level matches 100.. run return fail
execute if entity @s[tag=Unknown] run return fail
execute if entity @s[tag=Boss] run return fail

#（呪蝕耐性値）%の確率で失敗
execute store result score _ _ run random value 1..100
execute unless score @s CurseResistance < _ _ run return fail

tag @s add EnemyCurse
execute unless score @s CurseTimer matches ..10 run scoreboard players set @s CurseTimer 10

function makeup:effect/enemy_debuff/curse/apply
