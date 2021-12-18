data merge storage mob_data: {Blink:{Name:"BlinkActivate",Count:0,Chance:0.0000d,TriggerOn:{Physical:false,Fire:false,Ice:false,Lightning:false,Light:false,Dark:false}}}
data modify storage mob_data: Blink.Count set from storage mob_data: Call.Count
data modify storage mob_data: Blink.Chance set from storage mob_data: Call.Chance
data modify storage mob_data: Blink.TriggerOn merge from storage mob_data: Call.TriggerOn

tag @s add CallOnDamage


data modify storage mob_data: AI.Damage append from storage mob_data: Blink
execute unless data storage mob_data: AI.Damage run say Test
tellraw @a [{"text":"mob_data: "},{"nbt":"AI.Damage","storage":"mob_data:","color":"white"}]

#data remove storage mob_data: Blink

say Cast Blink