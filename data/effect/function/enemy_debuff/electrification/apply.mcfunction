#> effect:enemy_debuff/electrification/apply
#
# 敵帯電付与

#（帯電耐性値）%の確率で失敗
execute store result score _ _ run random value 1..100
execute unless score @s ElectrificationResistance < _ _ run return fail

tag @s add EnemyElectrification
# 時間が延びると損になるので対策
execute unless score @s ElectrificationTimer matches ..10 run scoreboard players set @s ElectrificationTimer 10

function makeup:effect/enemy_debuff/electrification/apply

