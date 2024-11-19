#> entity:one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function entity:ten_seconds

### 停止飛翔物削除
execute as @e[tag=TickingRequired] at @s run function entity:check_freeze
