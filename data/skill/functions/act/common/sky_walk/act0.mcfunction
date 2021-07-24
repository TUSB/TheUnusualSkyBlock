##############################
### スカイウォーク発動
##############################

execute if score _ Level matches 1 run scoreboard players set _ _ 30
execute if score _ Level matches 2 run scoreboard players set _ _ 60
scoreboard players operation @s SkyWalk > _ _
tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"スカイウォーク","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果！"]
#初回適用
effect give @s minecraft:slow_falling 2 0
#演出
function makeup:skill/act/common/sky_walk/act0
