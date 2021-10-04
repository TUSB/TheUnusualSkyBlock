#Targetによるexit
# upは仰角5度以上のとき downも同様
execute if data storage mob_data: AI.Turn[0].Exit{Half:"up"} positioned ^ ^-0.004 ^ if entity @s[distance=..0.00479] run function enemy:ai/exit/exit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"down"} positioned ^ ^0.004 ^ if entity @s[distance=..0.00479] run function enemy:ai/exit/exit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"front"} positioned ^ ^ ^-0.004 if entity @s[distance=..0.005] run function enemy:ai/exit/exit
execute if data storage mob_data: AI.Turn[0].Exit{Half:"back"} positioned ^ ^ ^0.004 if entity @s[distance=..0.005] run function enemy:ai/exit/exit
