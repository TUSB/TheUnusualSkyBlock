#Targetによるexit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"up"} positioned ^ ^1000 ^ if entity @e[tag=Target,distance=..1000] run function enemy:ai/exit/exit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"down"} positioned ^ ^-1000 ^ if entity @e[tag=Target,distance=..1000] run function enemy:ai/exit/exit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"front"} positioned ^ ^ ^1000 if entity @e[tag=Target,distance=..1000] run function enemy:ai/exit/exit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"back"} positioned ^ ^ ^-1000 if entity @e[tag=Target,distance=..1000] run function enemy:ai/exit/exit
