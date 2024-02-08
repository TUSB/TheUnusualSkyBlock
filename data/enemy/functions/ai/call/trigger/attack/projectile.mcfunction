advancement revoke @s only enemy:call_on_attack_projectile
#投射物のOwnerを探索
execute store result score _ Calc run data get entity @e[tag=CallOnAttackProjectile,distance=..3,limit=1,sort=nearest] Owner[0]
execute as @e[tag=CallOnAttack,distance=0.01..64] run function enemy:ai/call/trigger/attack/projectile_source
#投射物自身がCallOnAttackの場合
execute on attacker run tag @s add Attacker
execute as @e[tag=CallOnAttack,distance=..3,limit=1,sort=nearest] run function enemy:ai/call/trigger/attack/trigger
execute on attacker run tag @s remove Attacker
