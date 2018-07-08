##############################
### ウォータアフィニティ適用
##############################

tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"ウォータアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"潜水中に体力が徐々に回復する。","color":"white"}},"の効果！"]
scoreboard players set @s WaterAffinity 180
