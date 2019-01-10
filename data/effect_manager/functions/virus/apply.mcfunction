##############################
### 病気付与
##############################

scoreboard players set @s VirusCount 90
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"病気","color":"white","hoverEvent":{"action":"show_text","value":"体力が回復しづらくなる。","color":"white"}},"にかかった！"]

###進捗
execute if entity @s[advancements={advancement_manager:dictionary/bad_effects/virus=false}] run advancement grant @s only advancement_manager:dictionary/bad_effects/virus