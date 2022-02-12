##############################
### １０秒処理
##############################

scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 6.. run function main:one_minute
scoreboard players set $Seconds Count 0

execute as @e[type=!player] unless predicate entity:kill_check run kill @s
