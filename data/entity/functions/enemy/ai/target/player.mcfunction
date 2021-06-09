execute if data storage mob_data: AI.Turn[0].Target{Block:0b} anchored eyes unless block ^ ^ ^ air run data modify storage mob_data: AI.Turn[0].Target.Radius_check set value 0
execute unless entity @p[distance=..0.5] store result storage mob_data: AI.Turn[0].Target.Radius_check int 0.99999 run data get storage mob_data: AI.Turn[0].Target.Radius_check
execute unless entity @p[distance=..0.5] unless data storage mob_data: AI.Turn[0].Target{Radius_check:0} positioned ^ ^ ^0.5 run function entity:enemy/ai/target/player
execute if entity @p[distance=..0.5] unless data storage mob_data: AI.Turn[0].Target{Radius_check:0} run tag @p[distance=..0.5] add Target
