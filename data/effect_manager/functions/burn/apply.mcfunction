##############################
### やけど付与
##############################

tag @s add Burn
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"やけど","color":"white","hoverEvent":{"action":"show_text","value":"炎上ダメージが増加する。","color":"white"}},"を負った！"]
