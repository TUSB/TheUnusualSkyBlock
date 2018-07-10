##############################
### 病気解除
##############################

scoreboard players reset @s VirusCount
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"病気","color":"white","hoverEvent":{"action":"show_text","value":"体力が回復しづらくなる。","color":"white"}},"から回復した！"]
