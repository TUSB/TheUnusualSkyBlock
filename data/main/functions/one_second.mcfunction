##############################
### １秒処理
##############################

scoreboard players add $Seconds Count 1
execute if score $Seconds Count matches 10.. run function main:ten_seconds
scoreboard players set $Tick Count 0

### 停止飛翔物削除
execute as @e[tag=TickingRequired] at @s run function entity:check_freeze

### キュアフィールド毎秒処理
execute as @e[tag=CureField] at @s run function skill:act/common/cure_field/tick
