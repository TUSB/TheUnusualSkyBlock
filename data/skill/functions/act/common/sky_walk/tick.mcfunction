##############################
### 風切毎秒処理
##############################

effect give @s minecraft:slow_falling 2 0
execute if entity @s[x_rotation=-90..0] run effect give @s minecraft:levitation 1 0
scoreboard players remove @s SkyWalk 1
execute if score @s SkyWalk matches 5 run tellraw @s [{"translate": "%1$sの効果が切れそうだ。","color":"yellow","with":[{"translate":"スカイウォーク","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"},"color":"white"}}]}]
execute if score @s SkyWalk matches 2 run tellraw @s [{"translate": "%1$sの効果が切れそうだ！！！","color":"yellow","with":[{"translate":"スカイウォーク","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"},"color":"white"}}]}]
execute if score @s SkyWalk matches ..0 run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s","color":"white"},{"translate":"スカイウォーク","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"},"color":"white"}}]}]
execute if score @s SkyWalk matches ..0 run scoreboard players reset @s SkyWalk
#演出
function makeup:skill/act/common/sky_walk/tick
