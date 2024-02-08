#Function
# 対象を確実に殺す
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,EPF:0,DeathCause:'[{"translate":"%1$sは衰弱死してしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 2 run attribute @s generic.max_health get
    function score_damage:api/attack
    function makeup:enemy/projectile_hit
