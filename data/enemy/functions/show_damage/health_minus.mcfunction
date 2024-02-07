
scoreboard players set _ _ 0
data modify storage mob_data: WeakElement set value []
execute if entity @s[scores={ElementFire=101..},tag=ReceivedFireDamage] store success score _ _ run data modify storage mob_data: WeakElement append value '{"text":"f","font":"element"}'
execute if entity @s[scores={ElementIce=101..},tag=ReceivedIceDamage] store success score _ _ run data modify storage mob_data: WeakElement append value '{"text":"c","font":"element"}'
execute if entity @s[scores={ElementLightning=101..},tag=ReceivedLightningDamage] store success score _ _ run data modify storage mob_data: WeakElement append value '{"text":"n","font":"element"}'
execute if entity @s[scores={ElementLight=101..},tag=ReceivedLightDamage] store success score _ _ run data modify storage mob_data: WeakElement append value '{"text":"l","font":"element"}'
execute if entity @s[scores={ElementDark=101..},tag=ReceivedDarkDamage] store success score _ _ run data modify storage mob_data: WeakElement append value '{"text":"d","font":"element"}'
execute if score _ _ matches 0 run data modify storage popup: data.format set value '{"text":"","color":"white"}'
execute if score _ _ matches 1 run data modify storage popup: data.format set value '{"text":"","color":"#ffd300"}'
execute store result storage popup: data.value int 1 run scoreboard players get @s StoredDamage
