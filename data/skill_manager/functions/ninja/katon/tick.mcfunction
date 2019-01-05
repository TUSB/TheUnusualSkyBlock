##############################
### 火遁継続
##############################

scoreboard players remove @s Katon 1
scoreboard players remove @s FireAffinity 1
effect give @s[nbt=!{Fire:-20s}] minecraft:dolphins_grace 2 49
effect give @s[nbt=!{Fire:-20s}] minecraft:conduit_power 2 49
effect give @s[nbt=!{Fire:-20s}] minecraft:fire_resistance 2 49
execute if score @s Katon matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"火遁","color":"white","hoverEvent":{"action":"show_text","value":"炎上中の活動能力が大幅に上昇する。","color":"white"}},"の効果が切れた。"]
execute if score @s FireAffinity matches 0.. run effect give @s[nbt=!{Fire:-20s}] minecraft:regeneration 2 5
execute if score @s FireAffinity matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ファイアアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"炎上中に体力が徐々に回復する。","color":"white"}},"の効果が切れた。"]
