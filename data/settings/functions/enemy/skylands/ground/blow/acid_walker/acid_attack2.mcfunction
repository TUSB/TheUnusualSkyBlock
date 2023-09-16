#Function
# 対象にダメージを与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {DamageType:[Global],DeathCause:'[{"translate":"%1$sは床に垂れた酸に溶かされてしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run data get storage mob_data: Call.Damage
    scoreboard players set @s ProjectileTime -10
    function skill:enemy/laser/main/damage
# 音
    playsound block.redstone_torch.burnout hostile @a[distance=..16] ~ ~ ~ 0.6 0
