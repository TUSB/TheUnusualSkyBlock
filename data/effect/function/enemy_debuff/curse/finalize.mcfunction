#> effect:enemy_debuff/curse/finalize
#
# 敵呪蝕終了

# 死亡判定 (100 - Level)%で死亡
scoreboard players set _ _ 100
execute store result score _ Calc run random value 0..99
scoreboard players operation _ _ -= @s Level
scoreboard players operation _ _ -= _ Calc
execute if score _ _ matches 1.. run tag @s add Garbage
execute if score _ _ matches 1.. run function makeup:effect/enemy_debuff/curse/finalize

tag @s remove EnemyCurse
scoreboard players reset @s CurseTimer
