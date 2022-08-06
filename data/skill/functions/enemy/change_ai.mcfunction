#AIを書き換え
execute if data storage mob_data: Call.Death run data modify storage mob_data: AI.Death set from storage mob_data: Call.Death
execute if data storage mob_data: Call.Time run data modify storage mob_data: AI.Time set from storage mob_data: Call.Time
execute if data storage mob_data: Call.Damage run data modify storage mob_data: AI.Damage set from storage mob_data: Call.Damage
execute if data storage mob_data: Call.Attack run data modify storage mob_data: AI.Attack set from storage mob_data: Call.Attack
execute if data storage mob_data: Call.Passenger run data modify storage mob_data: AI.Passenger set from storage mob_data: Call.Passenger
execute if data storage mob_data: Call.Block run data modify storage mob_data: AI.Block set from storage mob_data: Call.Block
#タグを付与
tag @s remove CallOnDeath
tag @s remove CallOnTime
tag @s remove CallOnDamage
tag @s remove CallOnAttack
tag @s remove CallOnBlock
execute if data storage mob_data: AI.Death[0] run tag @s add CallOnDeath
execute if data storage mob_data: AI.Time[0] run tag @s add CallOnTime
execute if data storage mob_data: AI.Damage[0] run tag @s add CallOnDamage
execute if data storage mob_data: AI.Attack[0] run tag @s add CallOnAttack
execute if data storage mob_data: AI.Block[0] run tag @s add CallOnBlock
#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
