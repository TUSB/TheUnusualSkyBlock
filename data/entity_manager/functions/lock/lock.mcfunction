##############################
### 敵固定処理
##############################

tag @s add Lock
effect give @s minecraft:unluck 1 1 true
data merge entity @s {NoAI:1b}
