data remove storage mob_data: Blink
data merge storage mob_data: {Blink:{Count:0,Chance:0.0000d}}
data modify storage mob_data: Blink.Count set from storage mob_data: Call.Count
data modify storage mob_data: Blink.Chance set from storage mob_data: Call.Chance
execute unless data storage mob_data: Call.TriggerOn run function skill:enemy/blink/cast/default
data modify storage mob_data: Blink.TriggerOn set from storage mob_data: Call.TriggerOn
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Blink set from storage mob_data: Blink

tag @s add CallOnDamage
function makeup:skill/enemy/blink/cast/0