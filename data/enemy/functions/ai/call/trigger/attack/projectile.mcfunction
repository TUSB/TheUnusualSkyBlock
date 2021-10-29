advancement revoke @s only enemy:projectile_hurt_player
execute store result score _ Calc run data get entity @e[type=arrow,distance=..3,limit=1,sort=nearest] Owner[0]
execute as @e[tag=CallOnAttack,distance=..64] run function enemy:ai/call/trigger/attack/projectile_source
