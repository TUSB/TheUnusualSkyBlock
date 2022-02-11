
### ローテーションでフリップする

execute store result score _ _ run data get storage calc: Rotation.3[0] 1000
execute store result storage calc: Rotation.3[0] float 0.001 run scoreboard players add _ _ 180000
execute store result storage calc: Rotation.3[1] float 0.001 run data get storage calc: Rotation.3[1] -1000

function calc:flip/round/3
