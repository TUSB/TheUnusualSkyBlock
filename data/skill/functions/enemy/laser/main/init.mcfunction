#ダメージ設定
data modify storage score_damage: Argument set value {DamageType:[Global,Projectile]}
data modify storage score_damage: Argument merge from storage mob_data: Call.Argument
execute unless data storage score_damage: Argument.Damage store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack

#CallOnAttack
data modify storage mob_data: Call.UUID set from entity @s UUID
data modify storage mob_data: Call.Owner set from entity @s Owner
data modify storage mob_data: Call.Tags set from entity @s Tags

#ループ実行
execute anchored eyes run function skill:enemy/laser/main/fork
