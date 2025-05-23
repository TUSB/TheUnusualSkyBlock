#Function
# 対象の最大HPの15%を確定で与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,DamageType:[Null],DeathCause:'[{"translate":"%1$sは桜の花びらで彩られた三途の川を渡っていった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.15 run attribute @s generic.max_health get 1
    function score_damage:api/attack
    scoreboard players set @s ProjectileTime -10
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 2
    scoreboard players operation _ Random %= _ _
# 対象を混乱させる
    execute if score _ Random matches 0 run effect give @s invisibility 5 6
# 対象にペイルを付与
    execute if score _ Random matches 1 run effect give @s invisibility 5 10
