##############################
### 病気付与
##############################

scoreboard players set @s VirusCount 90
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"病気","color":"white","hoverEvent":{"action":"show_text","value":"体力が回復しづらくなる。","color":"white"}},"にかかった！"]
