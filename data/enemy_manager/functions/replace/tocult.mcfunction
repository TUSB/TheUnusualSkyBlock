##############################
### バニラモブ置換 - 
##############################

execute if score $Random Global matches 0..25 run function enemy_manager:summon/tocult/ground/blow/undeatharmy/durahan_70
execute if score $Random Global matches 25..2519 run function enemy_manager:summon/tocult/ground/blow/frost_bear_61
execute if score $Random Global matches 2519..10000 run function enemy_manager:summon/tocult/ground/shoot/frozen_40
