##############################
### １秒処理
##############################

scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 10.. run function main:ten_seconds
scoreboard players set $Second Count 0

###状態異常耐性
execute as @a[scores={ResistEffects=1..}] at @s run function effects:resist
scoreboard players reset @a[scores={ResistLock=1..}] ResistLock
