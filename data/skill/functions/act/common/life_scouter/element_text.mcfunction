data modify storage skill: LifeScouter set value {WeakElement:[],ResistanceElement:[],RecoverElement:[]}

# Weak
execute if score @s ElementFire matches 101.. run data modify storage skill: LifeScouter.WeakElement append value '{"text":"f","font":"element"}'
execute if score @s ElementIce matches 101.. run data modify storage skill: LifeScouter.WeakElement append value '{"text":"c","font":"element"}'
execute if score @s ElementLightning matches 101.. run data modify storage skill: LifeScouter.WeakElement append value '{"text":"n","font":"element"}'
execute if score @s ElementLight matches 101.. run data modify storage skill: LifeScouter.WeakElement append value '{"text":"l","font":"element"}'
execute if score @s ElementDark matches 101.. run data modify storage skill: LifeScouter.WeakElement append value '{"text":"d","font":"element"}'
# Resistance
execute if score @s ElementFire matches 0..99 run data modify storage skill: LifeScouter.ResistanceElement append value '{"text":"f","font":"element"}'
execute if score @s ElementIce matches 0..99 run data modify storage skill: LifeScouter.ResistanceElement append value '{"text":"c","font":"element"}'
execute if score @s ElementLightning matches 0..99 run data modify storage skill: LifeScouter.ResistanceElement append value '{"text":"n","font":"element"}'
execute if score @s ElementLight matches 0..99 run data modify storage skill: LifeScouter.ResistanceElement append value '{"text":"l","font":"element"}'
execute if score @s ElementDark matches 0..99 run data modify storage skill: LifeScouter.ResistanceElement append value '{"text":"d","font":"element"}'
# Recover
execute if score @s ElementFire matches ..-1 run data modify storage skill: LifeScouter.RecoverElement append value '{"text":"f","font":"element"}'
execute if score @s ElementIce matches ..-1 run data modify storage skill: LifeScouter.RecoverElement append value '{"text":"c","font":"element"}'
execute if score @s ElementLightning matches ..-1 run data modify storage skill: LifeScouter.RecoverElement append value '{"text":"n","font":"element"}'
execute if score @s ElementLight matches ..-1 run data modify storage skill: LifeScouter.RecoverElement append value '{"text":"l","font":"element"}'
execute if score @s ElementDark matches ..-1 run data modify storage skill: LifeScouter.RecoverElement append value '{"text":"d","font":"element"}'

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LifeScouter merge from storage skill: LifeScouter