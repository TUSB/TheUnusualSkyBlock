#Function
# 対象に防具貫通でダメージを与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassResistance:1b,DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの放った衝撃波に全身を粉砕されてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    data modify storage score_damage: Argument.Damage set from storage mob_data: Call.Damage
    function score_damage:api/attack
    scoreboard players set @s ProjectileTime -10
# 対象にペイルを付与
   effect give @s invisibility 5 10
