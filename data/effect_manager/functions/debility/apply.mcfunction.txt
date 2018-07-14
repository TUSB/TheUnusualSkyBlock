##############################
### 衰弱付与
##############################

tag @s add Debility
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"衰弱","color":"white","hoverEvent":{"action":"show_text","value":"毒ダメージが増加する。","color":"white"}},"した！"]
