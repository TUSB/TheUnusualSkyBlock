
### プレイヤーに対してダメージを与える。

#ダメージ取得
data remove storage score_damage: Argument
data modify storage score_damage: Argument set from storage mob_data: Call.Player
execute unless data storage score_damage: Argument.Damage store result storage score_damage: Argument.Damage double 1 run scoreboard players get @s SpecialAttack

execute store result score 00000000-0000-0000-0000-000000000000 Calc run data get storage mob_data: Call.Distance.Max 100
execute store result score 00000000-0000-0000-0000-000000000001 Calc run data get storage mob_data: Call.Distance.Min 100

#大雑把に目標とするモブを探す
execute if score 00000000-0000-0000-0000-000000000001 Calc matches 0 run tag @e[predicate=entity:friendly,distance=0] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 1.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..200 run tag @e[predicate=entity:friendly,distance=0.01..2] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 201.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..400 run tag @e[predicate=entity:friendly,distance=2.01..4] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 401.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..800 run tag @e[predicate=entity:friendly,distance=4.01..8] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 801.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..1600 run tag @e[predicate=entity:friendly,distance=8.01..16] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 1601.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..3200 run tag @e[predicate=entity:friendly,distance=16.01..32] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 3201.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..6400 run tag @e[predicate=entity:friendly,distance=32.01..64] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 6401.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..12800 run tag @e[predicate=entity:friendly,distance=64.01..128] add TargetCards

#細かく調べてダメージを与える
execute as @e[tag=TargetCards] run function skill:enemy/damage/check_distance
