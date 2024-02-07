#> skill:enemy/delay_action/append/enemy/aurora_eye/
# @within function skill:enemy/delay_action/append/enemy/

execute if data storage mob_data: Call{Tags:["Zone"]} run function skill:enemy/delay_action/append/enemy/aurora_eye/zone
execute if data storage mob_data: Call{Tags:["Shard"]} run function skill:enemy/delay_action/append/enemy/aurora_eye/shard