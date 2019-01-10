##############################
### トント適用
##############################

scoreboard players set @s TntCount 43
tellraw @a [{"text":"","color":"red"},{"selector":"@s"},"は",{"text":"トント","color":"white","hoverEvent":{"action":"show_text","value":"一定回数ダメージを受けると爆発する。","color":"white"}},"体質になった！"]

###進捗
execute if entity @s[advancements={advancement_manager:dictionary/bad_effects/tnt=false}] run advancement grant @s only advancement_manager:dictionary/bad_effects/tnt