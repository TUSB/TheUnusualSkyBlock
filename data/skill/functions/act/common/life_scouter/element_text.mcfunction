data modify storage skill: LifeScouter set value {Fire:'""',Ice:'""',Lightning:'""',Light:'""',Dark:'""'}

# Fire
execute if score @s ElementFire matches 101.. run data modify storage skill: LifeScouter.Fire set value '{"text":"O","font":"element"}'
execute if score @s ElementFire matches 100 run data modify storage skill: LifeScouter.Fire set value '{"text":"o","font":"element"}'
execute if score @s ElementFire matches 1..99 run data modify storage skill: LifeScouter.Fire set value '{"text":"x","font":"element"}'
execute if score @s ElementFire matches ..0 run data modify storage skill: LifeScouter.Fire set value '{"text":"X","font":"element"}'
# Ice
execute if score @s ElementIce matches 101.. run data modify storage skill: LifeScouter.Ice set value '{"text":"O","font":"element"}'
execute if score @s ElementIce matches 100 run data modify storage skill: LifeScouter.Ice set value '{"text":"o","font":"element"}'
execute if score @s ElementIce matches 1..99 run data modify storage skill: LifeScouter.Ice set value '{"text":"x","font":"element"}'
execute if score @s ElementIce matches ..0 run data modify storage skill: LifeScouter.Ice set value '{"text":"X","font":"element"}'
# Lightning
execute if score @s ElementLightning matches 101.. run data modify storage skill: LifeScouter.Lightning set value '{"text":"O","font":"element"}'
execute if score @s ElementLightning matches 100 run data modify storage skill: LifeScouter.Lightning set value '{"text":"o","font":"element"}'
execute if score @s ElementLightning matches 1..99 run data modify storage skill: LifeScouter.Lightning set value '{"text":"x","font":"element"}'
execute if score @s ElementLightning matches ..0 run data modify storage skill: LifeScouter.Lightning set value '{"text":"X","font":"element"}'
# Light
execute if score @s ElementLight matches 101.. run data modify storage skill: LifeScouter.Light set value '{"text":"O","font":"element"}'
execute if score @s ElementLight matches 100 run data modify storage skill: LifeScouter.Light set value '{"text":"o","font":"element"}'
execute if score @s ElementLight matches 1..99 run data modify storage skill: LifeScouter.Light set value '{"text":"x","font":"element"}'
execute if score @s ElementLight matches ..0 run data modify storage skill: LifeScouter.Light set value '{"text":"X","font":"element"}'
# Dark
execute if score @s ElementDark matches 101.. run data modify storage skill: LifeScouter.Dark set value '{"text":"O","font":"element"}'
execute if score @s ElementDark matches 100 run data modify storage skill: LifeScouter.Dark set value '{"text":"o","font":"element"}'
execute if score @s ElementDark matches 1..99 run data modify storage skill: LifeScouter.Dark set value '{"text":"x","font":"element"}'
execute if score @s ElementDark matches ..0 run data modify storage skill: LifeScouter.Dark set value '{"text":"X","font":"element"}'

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LifeScouter merge from storage skill: LifeScouter
