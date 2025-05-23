#> skill:player_one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function skill:player_ten_seconds

## 忍者
# 風切
execute if entity @s[scores={Kazakiri=0..}] run function skill:act/ninja/kazakiri/second
