#Function
# 対象の最大HPの7%を確定で与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,EPF:0,DeathCause:'[{"translate":"%1$sは%2$sによって空の塵となった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.07 run attribute @s generic.max_health get 1
    function score_damage:api/attack
    scoreboard players set @s ProjectileTime -10
# 対象の最大MPの7%を確定で減らす
    scoreboard players set _ MP 7
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 対象を20%で麻痺させる
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..20 run effect give @s invisibility 5 5
