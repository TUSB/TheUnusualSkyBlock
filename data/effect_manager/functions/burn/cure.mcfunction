##############################
### やけど解除
##############################

tag @s remove Burn
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"やけど","color":"white","hoverEvent":{"action":"show_text","value":"炎上ダメージが増加する。","color":"white"}},"から回復した！"]
