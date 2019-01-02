##############################
### 恐怖付与
##############################

scoreboard players operation @s TerrorLevel > $40 Const
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"恐怖","color":"white","hoverEvent":{"action":"show_text","value":"スキルが発動しにくくなる。","color":"white"}},"した！"]
