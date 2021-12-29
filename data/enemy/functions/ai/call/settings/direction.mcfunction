execute if data storage mob_data: Settings.Target run function enemy:ai/call/settings/target/
execute if data storage mob_data: Settings.Target if score 000000000-0000-0000-0000-000000000002 _ matches 1 positioned as 0-0-0-0-2 run tp 0-0-0-0-1 ^ ^ ^ ~ ~

execute if data storage mob_data: Settings.Direction run function enemy:ai/call/settings/calc/direction
execute if data storage mob_data: Settings.Direction run function enemy:ai/call/settings/calc/speed
execute if data storage mob_data: Settings.Direction run function enemy:ai/call/settings/calc/add_pos
