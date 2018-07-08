##############################
### ファイアアフィニティ適用
##############################

tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"ファイアアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"炎上中に体力が徐々に回復する。","color":"white"}},"の効果！"]
scoreboard players set @s FireAffinity 180
