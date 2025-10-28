#Function
# 疑似慣性TP
    execute if score @s MP matches ..2 run tp @s ^ ^ ^0.5
    execute if score @s MP matches 3 run tp @s ^ ^ ^0.4
    execute if score @s MP matches 4 run tp @s ^ ^ ^0.3
    execute if score @s MP matches 5 run tp @s ^ ^ ^0.2
    execute if score @s MP matches 6 run tp @s ^ ^ ^0.15
    execute if score @s MP matches 7 run tp @s ^ ^ ^0.1
    execute if score @s MP matches 8 run tp @s ^ ^ ^0.05
    scoreboard players add @s MP 1
