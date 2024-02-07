
data modify storage mob_data: WeakElement set value []
execute if entity @s[scores={ElementFire=..-1},tag=ReceivedFireDamage] run data modify storage mob_data: WeakElement append value '{"text":"f","font":"element"}'
execute if entity @s[scores={ElementIce=..-1},tag=ReceivedIceDamage] run data modify storage mob_data: WeakElement append value '{"text":"c","font":"element"}'
execute if entity @s[scores={ElementLightning=..-1},tag=ReceivedLightningDamage] run data modify storage mob_data: WeakElement append value '{"text":"n","font":"element"}'
execute if entity @s[scores={ElementLight=..-1},tag=ReceivedLightDamage] run data modify storage mob_data: WeakElement append value '{"text":"l","font":"element"}'
execute if entity @s[scores={ElementDark=..-1},tag=ReceivedDarkDamage] run data modify storage mob_data: WeakElement append value '{"text":"d","font":"element"}'
data modify storage popup: data.format set value '{"text":"","color":"#a8ff00"}'
execute store result storage popup: data.value int 1 run scoreboard players get @s StoredDamage
