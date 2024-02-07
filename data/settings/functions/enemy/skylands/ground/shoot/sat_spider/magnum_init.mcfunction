#Function
data modify storage score_damage: Argument set value {DamageType:[Global,Projectile]}
execute unless data storage score_damage: Argument.Damage store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack

#モブ名取得
data modify storage mob_data: MobName set from entity @s CustomName

#CallOnAttack
data modify storage mob_data: Call.UUID set from entity @s UUID
data modify storage mob_data: Call.Owner set from entity @s Owner
data modify storage mob_data: Call.Tags set from storage mob_data: Tags

scoreboard players set _ _ 4
scoreboard players set @s _ 0
execute as @s run function settings:enemy/skylands/ground/shoot/sat_spider/magnum_loop
