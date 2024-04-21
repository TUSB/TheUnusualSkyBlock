
### ファランクス発動

function skill:act/knight/phalanx/apply
execute if score @s SneakTime matches 1.. as @a[distance=0.1..15] run function skill:act/knight/phalanx/apply
