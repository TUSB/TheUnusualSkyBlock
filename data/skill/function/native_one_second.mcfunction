#> skill:native_one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function skill:native_ten_seconds

## 忍者
# 居縮
execute if entity @s[scores={Isukumi=1..}] run function skill:act/ninja/isukumi/tick
