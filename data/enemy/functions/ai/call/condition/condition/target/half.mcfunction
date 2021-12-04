execute if data storage mob_data: Condition{Half:"up"} positioned ^ ^-0.004 ^ if entity @s[distance=..0.00479] run scoreboard players set _ Calc 1
execute if data storage mob_data: Condition{Half:"down"} positioned ^ ^0.004 ^ if entity @s[distance=..0.00479] run scoreboard players set _ Calc 1
execute if data storage mob_data: Condition{Half:"front"} positioned ^ ^ ^-0.004 if entity @s[distance=..0.005] run scoreboard players set _ Calc 1
execute if data storage mob_data: Condition{Half:"back"} positioned ^ ^ ^0.004 if entity @s[distance=..0.005] run scoreboard players set _ Calc 1
