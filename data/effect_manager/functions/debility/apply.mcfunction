##############################
### 衰弱(HP１列)
##############################

function effect_manager:status/modify_max
# tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"衰弱","color":"white","hoverEvent":{"action":"show_text","value":"毒ダメージが増加する。","color":"white"}},"した！"]

###進捗
execute if entity @s[advancements={advancement_manager:dictionary/bad_effects/debility=false}] run advancement grant @s only advancement_manager:dictionary/bad_effects/debility