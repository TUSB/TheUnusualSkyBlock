#> ai:skill/delay_action/act/execute/enemy/aurora_eye/
# @within function ai:skill/delay_action/act/execute/enemy/

execute if data storage mob_data: ExecutingAction{Tags:["Zone"]} run function ai:skill/delay_action/act/execute/enemy/aurora_eye/zone
execute if data storage mob_data: ExecutingAction{Tags:["Shard"]} run function ai:skill/delay_action/act/execute/enemy/aurora_eye/shard
