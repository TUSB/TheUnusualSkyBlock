#> calc:flip/round/1
### ローテーションを0-360に収める

execute store result score __ _ run data get storage calc: Rotation.2[0] 1000
execute store result score __ Calc run data get storage calc: Rotation.2[1] 1000

execute if score __ _ matches ..-1 run scoreboard players add __ _ 360000
execute if score __ _ matches 360001.. run scoreboard players remove __ _ 360000

execute if score __ Calc matches ..-90001 run scoreboard players set __ Calc -90000
execute if score __ Calc matches 90001.. run scoreboard players set __ Calc 90000

execute store result storage calc: Rotation.2[0] float 0.001 run scoreboard players get __ _
execute store result storage calc: Rotation.2[1] float 0.001 run scoreboard players get __ Calc

scoreboard players reset __ _
scoreboard players reset __ Calc
