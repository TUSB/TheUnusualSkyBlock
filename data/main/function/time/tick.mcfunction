#> main:time/tick

scoreboard players add $Ticks Count 1
execute if score $Ticks Count matches 20.. run function main:time/one_second
