##############################
### 死の宣告適用
##############################

scoreboard players set @s DoomCount 31
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"に",{"text":"死の宣告","color":"white","hoverEvent":{"action":"show_text","value":"一定時間経過後、死亡する。","color":"white"}},"を受けた！"]
