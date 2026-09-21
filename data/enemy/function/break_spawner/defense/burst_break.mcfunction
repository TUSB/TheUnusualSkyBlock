#> enemy:break_spawner/defense/burst_break
#
# スポナーの防御
# バーストブレイク
#

scoreboard players operation @s Burst -= _ _
scoreboard players operation @s Burst -= _ _
execute unless score @s Burst matches 0.. run function player:burst/reset
execute at @s run function player:burst/bar/set
execute store result score @s BurstTimer run data get storage tusb_player: burst_config.burst_break.reset_time
return 1
