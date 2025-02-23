#> main:time/one_second

scoreboard players set $Ticks Count 0
scoreboard players add $Seconds Count 1
execute if score $Seconds Count matches 10.. run function main:time/ten_seconds
