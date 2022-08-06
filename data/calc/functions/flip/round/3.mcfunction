
### ローテーションを0-360に収める

execute store result score _ _ run data get storage calc: Rotation.3[0] 1000
execute store result score _ Calc run data get storage calc: Rotation.3[1] 1000

execute if score _ _ matches ..-1 run scoreboard players add _ _ 360000
execute if score _ _ matches 360001.. run scoreboard players remove _ _ 360000

execute if score _ Calc matches ..-90001 run scoreboard players set _ Calc -90000
execute if score _ Calc matches 90001.. run scoreboard players set _ Calc 90000

execute store result storage calc: Rotation.3[0] float 0.001 run scoreboard players get _ _
execute store result storage calc: Rotation.3[1] float 0.001 run scoreboard players get _ Calc
