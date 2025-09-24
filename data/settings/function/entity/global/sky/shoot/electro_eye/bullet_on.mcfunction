#Function
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tags set from storage mob_data: Tags
data modify storage mob_data: Tags append value EnemyProjectile
data modify storage mob_data: Tags append value DamageProjectile
scoreboard players add @s NativeFlag 1
