#前方のEnemyProjectileをブロック
execute anchored eyes positioned ^ ^ ^0.5 positioned ~-0.75 ~-2 ~-0.75 at @e[tag=EnemyProjectile,dx=0.5,dy=1.8,dz=0.5] run function makeup:player/trigger/using/shield
execute anchored eyes positioned ^ ^ ^0.5 positioned ~-0.75 ~-2 ~-0.75 run kill @e[tag=EnemyProjectile,dx=0.5,dy=1.8,dz=0.5]

advancement revoke @s only player:trigger/using/shield
