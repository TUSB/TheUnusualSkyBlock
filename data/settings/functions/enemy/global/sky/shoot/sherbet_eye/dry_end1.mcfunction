#Function
# 対象の最大MPの10%を確定で減らす
    scoreboard players set _ MP 10
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# ダメージ
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {DamageType:[Global],DeathCause:'[{"translate":"%1$sは永久凍結してしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run data get storage mob_data: Call.Damage
    function skill:enemy/laser/main/damage
# 対象にかけられているバフを一部解除し、鈍足を付与
    effect give @s slowness 15 4
    effect give @s jump_boost 15 128
    effect clear @s minecraft:haste
    effect clear @s minecraft:night_vision
# 確定で凍結
    effect give @s invisibility 5 4
