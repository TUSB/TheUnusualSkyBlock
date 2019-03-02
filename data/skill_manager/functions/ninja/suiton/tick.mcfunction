##############################
### 水遁継続
##############################

#水遁
scoreboard players remove @s Suiton 1
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:dolphins_grace 2 49
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:conduit_power 2 49
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:water_breathing 2 49
execute if score @s Suiton matches ..0 run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"水遁","color":"white","hoverEvent":{"action":"show_text","value":"潜水中の活動能力が大幅に上昇する。","color":"white"}},"の効果が切れた。"]
scoreboard players reset @s[scores={Suiton=..0}] Suiton
#ウォーターアフィニティ
scoreboard players remove @s[scores={WaterAffinity=1..}] WaterAffinity 1
execute if score @s WaterAffinity matches 1.. anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:regeneration 2 5
execute if score @s WaterAffinity matches ..0 run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ウォーターアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"潜水中に体力が徐々に回復する。","color":"white"}},"の効果が切れた。"]
scoreboard players reset @s[scores={WaterAffinity=..0}] WaterAffinity
