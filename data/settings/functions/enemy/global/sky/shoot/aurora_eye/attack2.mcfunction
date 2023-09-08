#Function
# 対象の最大HPの15%を確定で与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,DamageType:[Null],DeathCause:'[{"translate":"%2$sは%1$sを、オーロラで包み込んで消し飛ばした。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.15 run attribute @s generic.max_health get 1
    function score_damage:api/attack
    scoreboard players set @s ProjectileTime -10
# 対象の最大MPの15%を確定で減らす
    scoreboard players set _ MP 15
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 対象にかけられているバフを一部解除する
    effect clear @s minecraft:haste
    effect clear @s minecraft:resistance
    effect clear @s minecraft:fire_resistance
    effect clear @s minecraft:night_vision
