##############################
### １０秒処理
##############################

execute as @e at @s positioned ~ -50 ~ unless entity @s[dx=0,dy=350,dz=0] run kill @s
scoreboard players set $TenSeconds Count 0