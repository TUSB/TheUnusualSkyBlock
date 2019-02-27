##############################
### バニラモブ置換 - 
##############################

execute if score $Random Global matches 0..3 run function enemy_manager:summon/global/ground/summon/monster_egg_18
execute if score $Random Global matches 3..6 run function enemy_manager:summon/global/ground/shoot/job/steelswordsman_65
execute if score $Random Global matches 6..9 run function enemy_manager:summon/global/sky/blow/death_65
execute if score $Random Global matches 9..26 run function enemy_manager:summon/global/ground/blow/steve/golden_apple_5
execute if score $Random Global matches 26..59 run function enemy_manager:summon/global/ground/blow/perverse_creeper_30
execute if score $Random Global matches 59..225 run function enemy_manager:summon/global/ground/shoot/flag/02_red_30
execute if score $Random Global matches 225..391 run function enemy_manager:summon/global/other/blow/colony/ferocious_fish_10
execute if score $Random Global matches 391..722 run function enemy_manager:summon/global/sky/shoot/fiend_squid_5
execute if score $Random Global matches 722..1053 run function enemy_manager:summon/global/sky/blow/eye/daemon_20
execute if score $Random Global matches 1053..1384 run function enemy_manager:summon/global/sky/blow/wing_slime_30
execute if score $Random Global matches 1384..1715 run function enemy_manager:summon/global/ground/blow/corpse_knight_8
execute if score $Random Global matches 1715..2378 run function enemy_manager:summon/global/sky/blow/ghost_20
execute if score $Random Global matches 2378..3041 run function enemy_manager:summon/global/ground/blow/goblins/goblin_archer_single_3
execute if score $Random Global matches 3041..3704 run function enemy_manager:summon/global/ground/shoot/flag/01_brown_20
execute if score $Random Global matches 3704..4367 run function enemy_manager:summon/global/ground/shoot/skeleton_rider_5
execute if score $Random Global matches 4367..5030 run function enemy_manager:summon/global/ground/shoot/slime_beetle_15
execute if score $Random Global matches 5030..5693 run function enemy_manager:summon/global/ground/blow/backthe_creeper_3
execute if score $Random Global matches 5693..6687 run function enemy_manager:summon/global/other/blow/colony/slime_5
execute if score $Random Global matches 6687..7681 run function enemy_manager:summon/global/neutrality_1
execute if score $Random Global matches 7681..8675 run function enemy_manager:summon/global/ground/blow/corpse_3
execute if score $Random Global matches 8675..10000 run function enemy_manager:summon/global/ground/blow/goblins/goblin_single_3
