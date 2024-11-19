#> main:time/one_minute

scoreboard players set $TenSeconds Count 0
scoreboard players add $Minutes Count 1
execute if score $Minutes Count matches 60.. run function main:time/one_hour
