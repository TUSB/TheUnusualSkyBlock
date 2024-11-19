#> calc:flip/base0flip3
### ローテーションでフリップする

execute store result score __ _ run data get storage calc: Rotation.3[0] 1000
execute store result storage calc: Rotation.3[0] float 0.001 run scoreboard players add __ _ 180000
execute store result storage calc: Rotation.3[1] float 0.001 run data get storage calc: Rotation.3[1] -1000

scoreboard players reset __ _

function calc:flip/round/3
