#> main:time/ten_seconds

scoreboard players set $Seconds Count 0
scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 6.. run function main:time/one_minute
