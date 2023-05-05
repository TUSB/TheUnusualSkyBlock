data modify storage mob_data: Target set from storage mob_data: Settings.Target
tp 0-0-0-0-2 ^ ^ ^

execute if data storage mob_data: Target{Look:"Self"} run tp 0-0-0-0-2 @s
execute unless data storage mob_data: Target{Look:"Self"} as 0-0-0-0-2 run function enemy:ai/call/settings/target/fork
execute if score 00000000-0000-0000-0000-000000000002 _ matches 0 run data modify storage mob_data: Success set value 0b
