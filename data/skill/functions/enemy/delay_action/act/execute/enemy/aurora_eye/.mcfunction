#> skill:enemy/delay_action/act/execute/enemy/aurora_eye/
# @within function skill:enemy/delay_action/act/execute/enemy/

execute if data storage mob_data: ExecutingAction{Tags:["Zone"]} run function skill:enemy/delay_action/act/execute/enemy/aurora_eye/zone
execute if data storage mob_data: ExecutingAction{Tags:["Shard"]} run function skill:enemy/delay_action/act/execute/enemy/aurora_eye/shard