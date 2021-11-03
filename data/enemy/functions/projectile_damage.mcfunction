execute if entity @s[advancements={enemy:projectile_damage={fireball=false,small_fireball=false,shulker_bullet=false}}] run say ya
execute if entity @s[advancements={enemy:projectile_damage={fireball=false,small_fireball=false}}] run data modify storage score_damage: Argument set value {DamageType:[Global,Projectile]}
execute if entity @s[advancements={enemy:projectile_damage={fireball=true}}] run data modify storage score_damage: Argument set value {DamageType:[Global,Blast]}
execute if entity @s[advancements={enemy:projectile_damage={small_fireball=true}}] run data modify storage score_damage: Argument set value {DamageType:[Global,Fire]}
execute if entity @s[advancements={enemy:projectile_damage={shulker_bullet=true}}] run data modify storage score_damage: Argument set value {DamageType:[Global,Fall]}
execute store result storage score_damage: Argument.Damage double 1 run scoreboard players get @e[tag=DamageProjectile,distance=..3,limit=1,sort=nearest] Attack
execute unless data storage score_damage: Argument{Damage:0} run function score_damage:api/attack

advancement revoke @s only enemy:projectile_damage
