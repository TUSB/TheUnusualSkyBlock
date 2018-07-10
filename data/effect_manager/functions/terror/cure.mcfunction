##############################
### 恐怖解除
##############################

scoreboard players reset @s TerrorLevel
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"恐怖","color":"white","hoverEvent":{"action":"show_text","value":"スキルが発動しにくくなる。","color":"white"}},"から回復した！"]
