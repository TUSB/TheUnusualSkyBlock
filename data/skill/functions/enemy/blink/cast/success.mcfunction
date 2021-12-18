data merge storage mob_data: {Blink:{Name:"BlinkActivate",Count:0,Chance:0.0000d,TriggerOn:{Physical:false,Fire:false,Ice:false,Lightning:false,Light:false,Dark:false}}}
data modify storage mob_data: Blink.Count set from storage mob_data: Call.Count
data modify storage mob_data: Blink.Chance set from storage mob_data: Call.Chance
data modify storage mob_data: Blink.TriggerOn set from storage mob_data: Call.TriggerOn

tag @s add CallOnDamage

data modify storage mob_data: AI.Damage append from storage mob_data: Blink

data remove storage mob_data: Blink