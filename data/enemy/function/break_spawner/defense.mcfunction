#> enemy:break_spawner/defense
#
# スポナーの防御
#

$execute store success storage tusb_mob: spawner_breaker.is_break byte 1 if score $(name) Burst >= _ _
$execute if data storage tusb_mob: spawner_breaker{is_break:true} run scoreboard players operation $(name) Burst -= _ _
$execute store success storage tusb_mob: spawner_breaker.is_break byte 1 if score $(name) Burst matches 0..
$execute if data storage tusb_mob: spawner_breaker{is_break:false} run scoreboard players set $(name) Burst 0
$execute as $(name) at @s run function player:burst/bar/set
$scoreboard players set $(name) BurstTimer 20
execute if data storage tusb_mob: spawner_breaker{is_break:true} run return 1
return fail
