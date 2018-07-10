##############################
### 呪詛付与
##############################

tag @s add Curse
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"呪詛","color":"white","hoverEvent":{"action":"show_text","value":"死亡時にアイテムが残らなくなる。","color":"white"}},"をかけられた！"]
