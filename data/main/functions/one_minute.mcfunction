
### １分処理

scoreboard players add $Minutes Count 1
execute if score $Minutes Count matches 60.. run function main:one_hour

scoreboard players set $TenSeconds Count 0
