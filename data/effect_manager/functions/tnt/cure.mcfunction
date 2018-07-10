##############################
### トント回避
##############################

scoreboard players reset @s TntCount
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"トント","color":"white","hoverEvent":{"action":"show_text","value":"一定回数ダメージを受けると爆発する。","color":"white"}},"から回復した！"]
