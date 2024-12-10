#> skill:player_tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function skill:player_one_second

#インターバル表示
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Skill:{ShowInterval:1b}}}}]}] run function skill:show_interval/check
