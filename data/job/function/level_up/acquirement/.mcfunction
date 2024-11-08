#> job:level_up/acquirement/
scoreboard players set _ Ret 0
function job:level_up/acquirement/job
execute if score _ Ret matches 1 in area:control_area run tellraw @s [{"block":"2 3 2","nbt":"front_text.messages[0]","interpret":true}]
