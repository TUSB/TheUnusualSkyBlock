##############################
### 衰弱解除
##############################

tag @s remove Debility
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"衰弱","color":"white","hoverEvent":{"action":"show_text","value":"毒ダメージが増加する。","color":"white"}},"から回復した！"]
