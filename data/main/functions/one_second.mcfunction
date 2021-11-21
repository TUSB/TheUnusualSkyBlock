##############################
### １秒処理
##############################

scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 10.. run function main:ten_seconds
scoreboard players set $Second Count 0

### 停止飛翔物削除
execute as @e[tag=TickingRequired] run function entity:check_freeze

### プレイヤー
execute as @a at @s run function player:one_second
