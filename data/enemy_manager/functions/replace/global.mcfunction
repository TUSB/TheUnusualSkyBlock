##############################
### バニラモブ置換 - 
##############################

execute if score $Random Global matches 0..4 run function enemy_manager:summon/global/ground/summon/monster_egg_18
execute if score $Random Global matches 4..8 run function enemy_manager:summon/global/ground/shoot/job/steelswordsman_65
execute if score $Random Global matches 8..12 run function enemy_manager:summon/global/sky/blow/death_65
execute if score $Random Global matches 12..31 run function enemy_manager:summon/global/ground/blow/steve/golden_apple_5
execute if score $Random Global matches 31..68 run function enemy_manager:summon/global/ground/blow/perverse_creeper_30
execute if score $Random Global matches 68..255 run function enemy_manager:summon/global/ground/shoot/flag/02_red_30
execute if score $Random Global matches 255..442 run function enemy_manager:summon/global/sky/blow/wing_slime_30
execute if score $Random Global matches 442..629 run function enemy_manager:summon/global/other/blow/colony/ferocious_fish_10
execute if score $Random Global matches 629..1004 run function enemy_manager:summon/global/sky/shoot/fiend_squid_5
execute if score $Random Global matches 1004..1379 run function enemy_manager:summon/global/sky/blow/ghost_20
execute if score $Random Global matches 1379..1754 run function enemy_manager:summon/global/ground/shoot/slime_beetle_15
execute if score $Random Global matches 1754..2129 run function enemy_manager:summon/global/sky/blow/eye/daemon_20
execute if score $Random Global matches 2129..2504 run function enemy_manager:summon/global/ground/blow/corpse_knight_8
execute if score $Random Global matches 2504..3254 run function enemy_manager:summon/global/ground/shoot/flag/01_brown_20
execute if score $Random Global matches 3254..4004 run function enemy_manager:summon/global/ground/shoot/skeleton_rider_5
execute if score $Random Global matches 4004..4754 run function enemy_manager:summon/global/other/blow/colony/slime_5
execute if score $Random Global matches 4754..5504 run function enemy_manager:summon/global/neutrality_1
execute if score $Random Global matches 5504..6254 run function enemy_manager:summon/global/ground/blow/backthe_creeper_3
execute if score $Random Global matches 6254..7378 run function enemy_manager:summon/global/ground/blow/goblins/goblin_archer_single_3
execute if score $Random Global matches 7378..8502 run function enemy_manager:summon/global/ground/blow/corpse_3
execute if score $Random Global matches 8502..10001 run function enemy_manager:summon/global/ground/blow/goblins/goblin_single_3
