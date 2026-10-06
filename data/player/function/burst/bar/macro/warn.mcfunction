#> player:burst/bar/macro/warn

$execute if score @s BurstTimer matches 1..10 run bossbar set burst:$(id) color red
$execute unless score @s BurstTimer matches 1..10 run bossbar set burst:$(id) color white
$execute unless score @s[tag=BurstBreak] BurstTimer matches 1..10 run bossbar set burst:$(id) color yellow
