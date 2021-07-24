##############################
### 風切発動
##############################

execute if score _ Level matches 1 run scoreboard players set _ _ 600
execute if score _ Level matches 2 run scoreboard players set _ _ 1200
scoreboard players operation @s Kazakiri > _ _
tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果！"]
#演出
function makeup:skill/act/ninja/kazakiri/act0
