#ダメージ
execute as @e[tag=EnemyProjectile,distance=..3,limit=1,sort=nearest] run function #oh_my_dat:please
data modify storage mob_data: MobName set from entity @e[tag=EnemyProjectile,distance=..3,limit=1,sort=nearest] CustomName
data modify storage score_damage: Argument set value {DamageType:[Global,Projectile]}
data modify storage score_damage: Argument.DeathCause set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".DeathCause
execute store result score _ Damage store result storage score_damage: Argument.Damage double 1 run scoreboard players get @e[tag=EnemyProjectile,distance=..3,limit=1,sort=nearest] Attack 
execute if entity @s[type=player] unless data storage score_damage: Argument{Damage:0} run function score_damage:api/attack
execute if entity @s[type=!player] unless data storage score_damage: Argument{Damage:0} run data modify storage skill: Damage.Hit set value 1b
execute if entity @s[type=!player] unless data storage score_damage: Argument{Damage:0} run function skill:damage/apply/physical
tag @s[type=!player] add HitDamageTaken
#CallOnAttack
execute if entity @e[tag=EnemyProjectile,tag=CallOnAttackProjectile,distance=..3,limit=1,sort=nearest] at @s run function enemy:ai/call/trigger/attack/projectile
#演出
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/projectile_hit
#無敵時間を設定
scoreboard players set @s ProjectileTime -10
#被ダメージトリガー
execute if entity @s[type=!player] run function player:trigger/damage_taken
