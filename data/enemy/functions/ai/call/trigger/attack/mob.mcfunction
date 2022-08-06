advancement revoke @s only enemy:call_on_attack
execute as @e[tag=CallOnAttack,distance=..12,limit=1,sort=nearest] run function enemy:ai/call/trigger/attack/trigger
