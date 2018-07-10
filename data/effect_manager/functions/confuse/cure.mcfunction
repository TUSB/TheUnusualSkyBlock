##############################
### 混乱解除
##############################

scoreboard players reset @s ConfuseCount
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"混乱","color":"white","hoverEvent":{"action":"show_text","value":"進行方向が分からなくなる。","color":"white"}},"から回復した！"]
