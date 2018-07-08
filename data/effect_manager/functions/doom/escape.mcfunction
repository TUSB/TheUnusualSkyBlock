##############################
### 死の宣告回避
##############################

###---演出---Start
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"死の宣告","color":"white","hoverEvent":{"action":"show_text","value":"一定時間経過後、死亡する。","color":"white"}},"から回復した！"]
###---演出---End
scoreboard players reset @s DoomCount
