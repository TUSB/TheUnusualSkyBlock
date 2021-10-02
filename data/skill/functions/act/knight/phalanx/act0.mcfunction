
### ファランクス発動

execute unless score @s SneakTime matches 1.. as @s run function skill:act/knight/phalanx/apply
execute if score @s SneakTime matches 1.. as @a[distance=..15] run function skill:act/knight/phalanx/apply
