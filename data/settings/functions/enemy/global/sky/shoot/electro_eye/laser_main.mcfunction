#Function
data modify storage score_damage: Argument set value {DamageType:[Global]}
execute unless data storage score_damage: Argument.Damage store result storage score_damage: Argument.Damage int 0.4 run scoreboard players get @s SpecialAttack

#モブ名取得
data modify storage mob_data: MobName set from entity @s CustomName

#CallOnAttack
data modify storage mob_data: Call.UUID set from entity @s UUID
data modify storage mob_data: Call.Owner set from entity @s Owner
data modify storage mob_data: Call.Tags set from storage mob_data: Tags

data modify storage mob_data: Call.Loop set value 32
execute as @s anchored eyes run function settings:enemy/global/sky/shoot/electro_eye/laser_loop
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Rotation run tp @s ~ ~ ~ ~6 ~
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Rotation run tp @s ~ ~ ~ ~-6 ~
