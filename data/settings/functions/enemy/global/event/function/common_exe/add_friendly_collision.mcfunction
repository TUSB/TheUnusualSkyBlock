#Function
# 味方弾判定追加
scoreboard players add @s[tag=!DamageProjectile] NativeFlag 1
data modify storage mob_data: Tags append value "FriendlyProjectile"
data modify storage mob_data: Tags append value "DamageProjectile"
