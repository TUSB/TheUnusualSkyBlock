#> player:one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function player:ten_seconds

# 祈り表示
execute if entity @s[scores={Job=1..},tag=Pray] run function player:pray
