#Function
# 敵弾判定追加
scoreboard players add @s[tag=!DamageProjectile] NatieFlag 1
data modify storage mob_data: Tags append value "EnemyProjectile"
data modify storage mob_data: Tags append value "DamageProjectile"
