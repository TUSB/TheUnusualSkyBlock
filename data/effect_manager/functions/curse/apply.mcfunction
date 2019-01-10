##############################
### 呪詛付与
##############################

tag @s add Curse
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"呪詛","color":"white","hoverEvent":{"action":"show_text","value":"死亡時にアイテムが残らなくなる。","color":"white"}},"をかけられた！"]

###進捗
execute if entity @s[advancements={advancement_manager:dictionary/bad_effects/curse=false}] run advancement grant @s only advancement_manager:dictionary/bad_effects/curse