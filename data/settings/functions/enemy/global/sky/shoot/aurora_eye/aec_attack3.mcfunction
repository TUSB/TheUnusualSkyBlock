#Function
# 対象の最大HPの2%を確定で与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,EPF:0,DeathCause:'[{"translate":"%1$sは星屑となって消えてしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.02 run attribute @s generic.max_health get 1
    execute if data storage score_damage: Argument{Damage:0} run data modify storage score_damage: Argument.Damage set value 1
    function score_damage:api/attack
    function makeup:enemy/projectile_hit
# 対象の最大MPの2%を確定で減らす
    scoreboard players set _ MP 2
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 対象にかけられているバフを一部解除する
    effect clear @s minecraft:haste
    effect clear @s minecraft:resistance
    effect clear @s minecraft:fire_resistance
    effect clear @s minecraft:night_vision
