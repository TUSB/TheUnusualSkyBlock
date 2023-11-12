#> skill:act/common/confusion_debaria/act0
#
# 混乱 デバリア
#
# @within function skill:practice/act/common

# 効果
    scoreboard players set @s ConfusionDebaria 60
    tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"コンフュージョンデバリア","color":"#DBD4A6","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"1分間『特殊デバフ：混乱』を無効化する。"},"color":"white"}}]}]
# 効果音
    function makeup:skill/act/common/confusion_debaria/act0
# 解除
    effect give @s invisibility 3 75 true