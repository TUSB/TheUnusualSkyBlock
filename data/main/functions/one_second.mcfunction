##############################
### １秒処理
##############################

scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 10.. run function main:ten_seconds
scoreboard players set $Second Count 0
