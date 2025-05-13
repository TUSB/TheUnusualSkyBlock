#> ai:skill/delay_action/append/enemy/aurora_eye/
# @within function ai:skill/delay_action/append/enemy/

execute if data storage mob_data: Call{Tags:["Zone"]} run function ai:skill/delay_action/append/enemy/aurora_eye/zone
execute if data storage mob_data: Call{Tags:["Shard"]} run function ai:skill/delay_action/append/enemy/aurora_eye/shard
