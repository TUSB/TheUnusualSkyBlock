##############################
### 死の宣告回避
##############################

scoreboard players reset @s DoomCount
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"死の宣告","color":"white","hoverEvent":{"action":"show_text","value":"一定時間経過後、死亡する。","color":"white"}},"から逃れた！"]

###進捗
execute if entity @s[advancements={advancement_manager:common/anti_doom=false}] unless score @s Deaths matches 0.. run advancement grant @s only advancement_manager:common/anti_doom