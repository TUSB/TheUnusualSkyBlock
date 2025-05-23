#> skill:act/ninja/kazakiri/finalize
#
# 風切終了

tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s","color":"white"},{"translate":"風切","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"}}}]}]
scoreboard players reset @s Kazakiri
scoreboard players reset @s KazakiriLevitation
