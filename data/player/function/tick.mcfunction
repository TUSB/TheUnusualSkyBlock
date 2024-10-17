#> player:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function player:one_second

### トリガー
execute if entity @s[scores={UseBow=1..}] run function player:trigger/use/bow
