#Function
# HP判定
    scoreboard players operation _ _ = @s HP
    scoreboard players set _ Calc 100
    scoreboard players operation _ _ *= _ Calc
    scoreboard players operation _ _ /= @s HPMax
    execute if score _ _ matches ..49 run data modify storage mob_data: Tags append value "HalfHP"
