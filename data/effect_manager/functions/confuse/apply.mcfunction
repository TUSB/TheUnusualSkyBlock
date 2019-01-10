##############################
### 混乱付与
##############################

scoreboard players set @s ConfuseCount 10
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"混乱","color":"white","hoverEvent":{"action":"show_text","value":"進行方向が分からなくなる。","color":"white"}},"した！"]

###進捗
execute if entity @s[advancements={advancement_manager:dictionary/bad_effects/confuse=false}] run advancement grant @s only advancement_manager:dictionary/bad_effects/confuse