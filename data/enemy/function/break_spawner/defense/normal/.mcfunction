#> enemy:break_spawner/defense
#
# スポナーの防御
#

execute store success storage tusb_mob: spawner_breaker.is_break byte 1 if score @s Burst >= _ _
execute if data storage tusb_mob: spawner_breaker{is_break:true} run scoreboard players operation @s Burst -= _ _
execute unless score @s Burst matches 0.. run scoreboard players set @s Burst 0
execute at @s run function player:burst/bar/set
scoreboard players set @s BurstTimer 20
execute if data storage tusb_mob: spawner_breaker{is_break:true} run return 1
return fail
