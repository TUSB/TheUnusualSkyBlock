#> entity:projectile_hit/hit
#ダメージ
data modify storage entity: damage set value {hit:true}
execute store result storage entity: damage.physical double 1 run scoreboard players get @e[tag=DamageProjectile,distance=..3,limit=1,sort=nearest] Attack
execute as @e[tag=DamageProjectile,distance=..3,limit=1,sort=nearest] run function #oh_my_dat:please
data modify storage entity: damage merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.ProjectileDamage
data modify storage mob_data: MobName set from entity @e[tag=DamageProjectile,distance=..3,limit=1,sort=nearest] CustomName
function entity:damage/apply/physical
#CallOnAttack
execute if entity @e[tag=DamageProjectile,tag=CallOnAttackProjectile,distance=..3,limit=1,sort=nearest] at @s run function enemy:ai/call/trigger/attack/projectile
#演出
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/projectile_hit
#無敵時間を設定
scoreboard players set @s ProjectileTime -10
#被ダメージトリガー
execute if entity @s[type=player] run function player:trigger/damage_taken
