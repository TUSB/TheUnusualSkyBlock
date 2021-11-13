data modify storage score_damage: Argument set value {DamageType:[Global,Projectile]}
execute store result storage score_damage: Argument.Damage double 1 run scoreboard players get @e[tag=DamageProjectile,distance=..3,limit=1,sort=nearest] Attack
execute unless data storage score_damage: Argument{Damage:0} run function score_damage:api/attack
tag @e[tag=DamageProjectile,distance=..3,limit=1,sort=nearest] remove DamageProjectile
