
function oh_my_dat:please

data modify storage skill: LifeScouter set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LifeScouter

scoreboard players set _ _ 100
scoreboard players operation _ HP = @s HP
scoreboard players operation _ HP *= _ _
scoreboard players operation _ HPMax = @s HPMax
scoreboard players operation _ HP /= _ HPMax

execute if score _ HP matches ..10 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H+---------","font":"hp_bar"}'
execute if score _ HP matches 11..20 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H++--------","font":"hp_bar"}'
execute if score _ HP matches 21..30 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H+++-------","font":"hp_bar"}'
execute if score _ HP matches 31..40 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H++++------","font":"hp_bar"}'
execute if score _ HP matches 41..50 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H+++++-----","font":"hp_bar"}'
execute if score _ HP matches 51..60 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H++++++----","font":"hp_bar"}'
execute if score _ HP matches 61..70 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H+++++++---","font":"hp_bar"}'
execute if score _ HP matches 71..80 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H++++++++--","font":"hp_bar"}'
execute if score _ HP matches 81..90 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H+++++++++-","font":"hp_bar"}'
execute if score _ HP matches 91..100 run data modify storage skill: LifeScouter.HPBar set value '{"text":"H++++++++++","font":"hp_bar"}'

execute in area:control_area run loot replace block 2 2 2 container.0 loot skill:life_scouter
execute on passengers if entity @s[tag=LifeScouterText] in area:control_area run data modify entity @s text set from block 2 2 2 Items[0].tag.display.Lore[0]
