#> player:burst/bar/macro/set

$execute store result bossbar burst:$(id) value run scoreboard players get @s Burst

# 表示
$execute if score @s Burst matches 1.. run bossbar set burst:$(id) visible true
$execute if score @s Burst matches ..0 run bossbar set burst:$(id) visible false

# 色
$execute if entity @s[tag=!BurstBreak] run bossbar set burst:$(id) color white
$execute if entity @s[tag=BurstBreak] run bossbar set burst:$(id) color yellow
