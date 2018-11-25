##############################
### 病気中回復時
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global matches 50.. run tellraw @a [{"text":"","color":"red"},{"selector":"@s"}," は",{"text":"病気","color":"white","hoverEvent":{"action":"show_text","value":"体力が回復しづらくなる。","color":"white"}},"で十分に体力を回復できない！！"]
execute if score $Random Global matches 50.. run scoreboard players reset @s HealthHealing
