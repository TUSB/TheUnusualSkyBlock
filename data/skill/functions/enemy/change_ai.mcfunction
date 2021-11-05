#AIを書き換え
execute if data storage mob_data: Call.Death run data modify storage mob_data: AI.Death set from storage mob_data: Call.Death
execute if data storage mob_data: Call.Time run data modify storage mob_data: AI.Time set from storage mob_data: Call.Time
execute if data storage mob_data: Call.Damage run data modify storage mob_data: AI.Damage set from storage mob_data: Call.Damage
execute if data storage mob_data: Call.Attack run data modify storage mob_data: AI.Attack set from storage mob_data: Call.Attack
#タグを付与
execute if data storage mob_data: Call.Death run tag @s add CallOnDeath
execute if data storage mob_data: Call.Time run tag @s add CallOnTime
execute if data storage mob_data: Call.Damage run tag @s add CallOnDamage
execute if data storage mob_data: Call.Attack run tag @s add CallOnAttack
#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
