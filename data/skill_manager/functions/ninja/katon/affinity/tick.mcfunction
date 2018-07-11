##############################
### ファイアアフィニティ継続
##############################

scoreboard players remove @s FireAffinity 1
effect give @s[nbt=!{Fire:-20s}] minecraft:regeneration 1 5
execute if score @s FireAffinity matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ファイアアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"炎上中に体力が徐々に回復する。","color":"white"}},"の効果が切れた。"]
