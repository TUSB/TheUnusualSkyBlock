#> enemy:break_spawner/defense/normal
#
# スポナーの防御
#

execute store success storage tusb_mob: spawner_breaker.is_break byte 1 if score @s Burst >= _ _
execute if data storage tusb_mob: spawner_breaker{is_break:true} run scoreboard players operation @s Burst -= _ _
execute store result score @s BurstTimer run data get storage tusb_player: burst_config.reset_time
execute unless score @s Burst matches 1.. run function player:burst/reset
execute at @s run function player:burst/bar/set
execute if data storage tusb_mob: spawner_breaker{is_break:true} run return 1
return fail
