##############################
### バニラモブ置換 - 
##############################

execute if score $Random Global matches 0..5 run function enemy_manager:summon/global/boss_90
execute if score $Random Global matches 5..5003 run function enemy_manager:summon/global/ground/blow/goblins/goblin_blaze_single_7
execute if score $Random Global matches 5003..10001 run function enemy_manager:summon/nether/ground/blow/volatile_flameblood_15
