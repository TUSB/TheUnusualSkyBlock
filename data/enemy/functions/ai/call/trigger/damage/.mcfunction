function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI
data modify storage mob_data: CallList set from storage mob_data: AI.Damage
##幻影呼び出し
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Blink run function skill:enemy/blink/activate/
##
execute if data storage mob_data: CallList[0].Element run function enemy:ai/call/trigger/damage/element

tag @s remove ReceivedPhysicalDamage
tag @s remove ReceivedFireDamage
tag @s remove ReceivedIceDamage
tag @s remove ReceivedLightningDamage
tag @s remove ReceivedLightDamage
tag @s remove ReceivedDarkDamage

execute unless data storage mob_data: CallList[0].Element run function enemy:ai/call/execute/
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI