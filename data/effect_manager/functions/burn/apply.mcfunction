##############################
### やけど付与
##############################

tag @s[nbt=!{Fire:-20s}] add Burn
execute unless entity @s[nbt={Fire:-20s}] run tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"やけど","color":"white","hoverEvent":{"action":"show_text","value":"炎上ダメージが増加する。","color":"white"}},"を負った！"]

###進捗
execute if entity @s[advancements={advancement_manager:dictionary/bad_effects/burn=false}] run advancement grant @s only advancement_manager:dictionary/bad_effects/burn