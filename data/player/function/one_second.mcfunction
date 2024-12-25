#> player:one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function player:ten_seconds

###特殊デバフ処理
execute if entity @s[scores={BurnCount=0..}] run function effect:burn/tick
execute if entity @s[scores={ConfuseCount=1..}] run function effect:confuse/tick
execute if entity @s[scores={PalsyLevel=1..}] run function effect:palsy/tick

# 祈り表示
execute if entity @s[scores={Job=1..},tag=Pray] run function player:pray
