advancement revoke @s only enemy:call_on_attack_projectile
execute store result score _ Calc run data get entity @e[tag=DamageProjectile,distance=..3,limit=1,sort=nearest] Owner[0]
execute as @e[tag=CallOnAttack,distance=..64] run function enemy:ai/call/trigger/attack/projectile_source
