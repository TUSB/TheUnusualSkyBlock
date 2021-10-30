function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI
data modify storage mob_data: CallList set from storage mob_data: AI.Attack
execute if data storage mob_data: CallList[{Position:"Source"}] at @s run function enemy:ai/call/execute/
execute unless data storage mob_data: CallList[{Position:"Source"}] run function enemy:ai/call/execute/
