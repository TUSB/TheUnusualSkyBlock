##############################
### バニラモブ置換 - 
##############################

execute if score $Random Global matches 0..66 run function enemy_manager:summon/global/ground/blow/goblin/dark_goblin_single_8
execute if score $Random Global matches 66..728 run function enemy_manager:summon/global/ground/blow/goblin/rock_goblin_single_7
execute if score $Random Global matches 728..3377 run function enemy_manager:summon/global/ground/blow/goblin/hob_goblin_10
execute if score $Random Global matches 3377..10000 run function enemy_manager:summon/global/ground/blow/goblin/goblin_bomber_single_3
