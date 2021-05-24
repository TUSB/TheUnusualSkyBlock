##############################
### １０秒処理
##############################

execute as @e unless predicate entity:kill_check run kill @s
scoreboard players set $TenSeconds Count 0