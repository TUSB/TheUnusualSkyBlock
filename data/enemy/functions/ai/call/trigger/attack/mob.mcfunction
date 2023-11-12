advancement revoke @s only enemy:call_on_attack
execute on attacker run tag @s add Attacker
execute as @e[tag=Attacker,tag=CallOnAttack,distance=..12,limit=1,sort=nearest] run function enemy:ai/call/trigger/attack/trigger
execute on attacker run tag @s remove Attacker
