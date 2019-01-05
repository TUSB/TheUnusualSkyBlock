##############################
### 水遁継続
##############################

scoreboard players remove @s Suiton 1
scoreboard players remove @s WaterAffinity 1
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:dolphins_grace 2 49
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:conduit_power 2 49
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:water_breathing 2 49
execute if score @s Suiton matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"水遁","color":"white","hoverEvent":{"action":"show_text","value":"潜水中の活動能力が大幅に上昇する。","color":"white"}},"の効果が切れた。"]
execute anchored eyes if block ^ ^ ^ minecraft:water if score @s WaterAffinity matches 0.. run effect give @s minecraft:regeneration 2 5
execute if score @s WaterAffinity matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ウォーターアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"潜水中に体力が徐々に回復する。","color":"white"}},"の効果が切れた。"]
