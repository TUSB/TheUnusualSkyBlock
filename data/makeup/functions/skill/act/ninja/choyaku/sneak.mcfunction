execute if score @s Choyaku < _ Choyaku run data modify storage calc: Text set value '[{"score":{"name":"@s","objective":"Choyaku"},"color":"yellow","bold":true}," Pyon!!"]'
execute if score @s Choyaku >= _ Choyaku run data modify storage calc: Text set value '[{"score":{"name":"@s","objective":"Choyaku"},"color":"gold","bold":true}," Pyon!!"]'
data modify storage calc: TextLength set value 5
title @s times 0 100 20
function calc:show_text/subtitle

execute if score @s Choyaku < _ Choyaku run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
execute if score @s Choyaku >= _ Choyaku run playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 1 1.2
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^0.2 ^1.3 0 0 0 2.5 2 force
