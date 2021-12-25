execute unless data storage score_damage: Argument{Damage:0} run function score_damage:api/attack
execute if data storage mob_data: Call{Tags:[CallOnAttack]} store result score _ Calc run data get storage mob_data: Call.UUID[0]
execute if data storage mob_data: Call{Tags:[CallOnAttack]} as @e[tag=CallOnAttack,distance=..64] run function enemy:ai/call/trigger/attack/projectile_source
execute if data storage mob_data: Call{Tags:[CallOnAttackProjectile]} store result score _ Calc run data get storage mob_data: Call.Owner[0]
execute if data storage mob_data: Call{Tags:[CallOnAttackProjectile]} as @e[tag=CallOnAttack,distance=..64] run function enemy:ai/call/trigger/attack/projectile_source
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/snowball_damage
scoreboard players set @s SnowballTime -10
