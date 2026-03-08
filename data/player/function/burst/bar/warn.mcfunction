#> player:burst/bar/warn

$execute if score @s BurstTimer matches 1..5 run bossbar set burst:$(id) color red
$execute unless score @s BurstTimer matches 1..5 run bossbar set burst:$(id) color white
