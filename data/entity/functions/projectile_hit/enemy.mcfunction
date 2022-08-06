#ダメージ
execute as @e[tag=FriendlyProjectile,distance=..3,limit=1,sort=nearest] run function oh_my_dat:please
data remove storage skill: Damage
data modify storage skill: Damage set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.ProjectileDamage
execute if data storage skill: Damage run function skill:damage/add/skill/normal
execute if data storage skill: Damage run function skill:damage/apply/
#CallOnAttack
execute if entity @e[tag=FriendlyProjectile,tag=CallOnAttackProjectile,distance=..3,limit=1,sort=nearest] at @s run function enemy:ai/call/trigger/attack/projectile
#無敵時間を設定
scoreboard players set @s ProjectileTime -10
