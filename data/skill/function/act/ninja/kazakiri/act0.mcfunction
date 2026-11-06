#> skill:act/ninja/kazakiri/act0
#
# 風切発動
execute if score _ Level matches 1 run scoreboard players set _ _ 30
execute if score _ Level matches 2 run scoreboard players set _ _ 60
scoreboard players operation @s Kazakiri > _ _
scoreboard players set _ _ 0
scoreboard players operation @s KazakiriLevitation > _ _ 

tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"風切","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"}}}]}]
# 初回適用
effect give @s minecraft:slow_falling 2 0
# 演出
function makeup:skill/act/ninja/kazakiri/act0
