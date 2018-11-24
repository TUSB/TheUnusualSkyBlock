##############################
### 死の宣告適用
##############################

scoreboard players set @s DoomCount 31
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"死の宣告","color":"white","hoverEvent":{"action":"show_text","value":"一定時間経過後、死亡する。","color":"white"}},"を受けた！"]

###進捗
execute if entity @s[advancements={advancement_manager:common/doom=false}] run advancement grant @s only advancement_manager:common/doom