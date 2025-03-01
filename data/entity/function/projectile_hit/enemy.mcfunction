#> entity:projectile_hit/enemy
#ダメージ
execute as @e[tag=FriendlyProjectile,distance=..3,limit=1,sort=nearest] run function #oh_my_dat:please
data remove storage entity: damage
data modify storage entity: damage set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.ProjectileDamageS
execute if data storage entity: damage run function entity:damage/apply/
#CallOnAttack
execute if entity @e[tag=FriendlyProjectile,tag=CallOnAttackProjectile,distance=..3,limit=1,sort=nearest] at @s run function enemy:ai/call/trigger/attack/projectile
#無敵時間を設定
scoreboard players set @s ProjectileTime -10
