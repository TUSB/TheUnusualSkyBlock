##############################
### 呪詛解除
##############################

tag @s remove Curse
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"呪詛","color":"white","hoverEvent":{"action":"show_text","value":"死亡時にアイテムが残らなくなる。","color":"white"}},"が解けた！"]
