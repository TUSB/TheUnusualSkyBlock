#> skill:act/ninja/kazakiri/second
#
# 風切毎秒処理

# 上昇時間管理
scoreboard players add @s KazakiriLevitation 1
execute if entity @s[x_rotation=1..90] run scoreboard players set @s KazakiriLevitation 0

# エフェクト付与 5秒以上浮遊していれば強める
effect give @s minecraft:slow_falling 2 0
execute if entity @s[x_rotation=-90..0,scores={KazakiriLevitation=..4}] run effect give @s minecraft:levitation 1 0
execute if entity @s[x_rotation=-90..0,scores={KazakiriLevitation=5..}] run effect give @s minecraft:levitation 1 4

# 時間管理
scoreboard players remove @s Kazakiri 1
execute if score @s Kazakiri matches 5 run tellraw @s [{"translate": "%1$sの効果が切れそうだ。","color":"yellow","with":[{"translate":"風切","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"}}}]}]
execute if score @s Kazakiri matches 2 run tellraw @s [{"translate": "%1$sの効果が切れそうだ！！！","color":"yellow","with":[{"translate":"風切","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"}}}]}]
execute if score @s Kazakiri matches ..0 run function skill:act/ninja/kazakiri/finalize

# 演出
function makeup:skill/act/ninja/kazakiri/second
