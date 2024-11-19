#> player:trigger/using/shield/
#前方のEnemyProjectileをブロック
execute anchored eyes positioned ^ ^ ^0.5 positioned ~-0.75 ~-2 ~-0.75 as @e[tag=EnemyProjectile,dx=0.5,dy=1.8,dz=0.5] at @s run function player:trigger/using/shield/block
execute store result score @s ShieldUsingTick run time query gametime
advancement revoke @s only player:trigger/using/shield
