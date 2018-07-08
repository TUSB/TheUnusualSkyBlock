##############################
### ウォーターアフィニティ
##############################

scoreboard players remove @s WaterAffinity 1
execute if block ~ ~ ~ minecraft:water run effect give @s minecraft:regeneration 1 3
execute if score @s WaterAffinity matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ウォーターアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"潜水中に体力が徐々に回復する。","color":"white"}},"の効果が切れた。"]
