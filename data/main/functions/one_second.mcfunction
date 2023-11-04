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

### 通常世界 脅威島
execute in area:skylands positioned 39 6 -557 if entity @a[distance=..10] run function area:system/skylands/threat
execute in area:skylands positioned 39 318 -557 if entity @a[distance=..10] run function area:system/skylands/threat

### 通常世界 エンダーチェスト島
execute in area:skylands positioned 67 110 -718 if entity @a[distance=..30] run function area:system/skylands/enderchest

### エンティティ数カウント
function entity:count/