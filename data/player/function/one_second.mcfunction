#> player:one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function player:ten_seconds

###特殊デバフ処理
execute if entity @s[scores={TntCount=0..}] if block ~ ~ ~ water run function effect:tnt/cure
