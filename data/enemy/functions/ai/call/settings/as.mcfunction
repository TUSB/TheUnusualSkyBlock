execute if data storage mob_data: Settings.Target run function enemy:ai/call/settings/target/
execute if score 00000000-0000-0000-0000-000000000002 _ matches 1 positioned as 0-0-0-0-2 as @e[predicate=entity:all_mob,distance=..0.01,limit=1,sort=nearest] positioned as 0-0-0-0-1 run function enemy:ai/call/settings/
