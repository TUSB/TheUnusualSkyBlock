##############################
### 風切毎秒処理
##############################

effect give @s minecraft:slow_falling 2 0
execute if entity @s[x_rotation=-90..0] run effect give @s minecraft:levitation 1 0
scoreboard players remove @s Kazakiri 1
execute unless score @s Kazakiri matches 0.. run scoreboard players reset @s Kazakiri
execute if score @s Kazakiri matches 5 run tellraw @s [{"text":"","color":"yellow"},{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果が切れそうだ。"]
execute if score @s Kazakiri matches 2 run tellraw @s [{"text":"","color":"yellow"},{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果が切れそうだ！！！"]
execute unless score @s Kazakiri matches 0.. run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果が切れた。"]

###---演出---Start

###---演出---End
