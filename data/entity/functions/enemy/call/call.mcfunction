execute if data storage mob_data: {Call:"Time"} run say killed by Time
execute if data storage mob_data: {Call:"Time"} run kill @s
execute if data storage mob_data: {Call:"Second"} if entity @a[distance=..5] run say Call by One_second
execute if data storage mob_data: {Call:"target_is_me"} as @e[tag=Target] run say is a Target
execute if data storage mob_data: {Call:"target_is_find"} run say Find of Target
execute if data storage mob_data: {Call:"Death"} run say is Death!
execute if data storage mob_data: {Call:"Passenger"} run say has Riding now