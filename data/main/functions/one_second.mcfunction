##############################
### １秒処理
##############################

scoreboard players add $Seconds Count 1
execute if score $Seconds Count matches 10.. run function main:ten_seconds
scoreboard players set $Tick Count 0

### 停止飛翔物削除
execute as @e[tag=TickingRequired] at @s run function entity:check_freeze

### バースト減少
execute if score $World Burst matches 1.. run function skill:burst/decrement
