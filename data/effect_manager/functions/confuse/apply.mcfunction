##############################
### 混乱付与
##############################

scoreboard players set @s ConfuseCount 30
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"混乱","color":"white","hoverEvent":{"action":"show_text","value":"進行方向が分からなくなる。","color":"white"}},"した！"]
