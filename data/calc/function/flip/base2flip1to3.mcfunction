#> calc:flip/base2flip1to3
### ローテーションでフリップする

function calc:flip/round/1
function calc:flip/round/2

execute unless data storage calc: Rotation.3[0] run data modify storage calc: Rotation.3 set value [0f,0f]

execute store result score __ _ run data get storage calc: Rotation.2[0] 2000
execute store result score __ Calc run data get storage calc: Rotation.1[0] 1000
execute store result storage calc: Rotation.3[0] float 0.001 run scoreboard players operation __ _ -= __ Calc

execute store result score __ _ run data get storage calc: Rotation.2[1] 2000
execute store result score __ Calc run data get storage calc: Rotation.1[1] 1000
execute store result storage calc: Rotation.3[1] float 0.001 run scoreboard players operation __ _ -= __ Calc

scoreboard players reset __ _
scoreboard players reset __ Calc

function calc:flip/round/3
