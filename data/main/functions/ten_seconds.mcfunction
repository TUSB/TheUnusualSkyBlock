##############################
### １０秒処理
##############################

execute as @e[type=!player] unless predicate entity:kill_check run kill @s
scoreboard players set $TenSeconds Count 0