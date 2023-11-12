#> skill:act/common/burn_debaria/act0
#
# 火だるま デバリア
#
# @within function skill:practice/act/common

# 効果
    scoreboard players set @s BurnDebaria 60
    tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"バーンデバリア","color":"#FF4400","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"1分間『特殊デバフ：火だるま』を無効化する。"},"color":"white"}}]}]
# 効果音
    function makeup:skill/act/common/burn_debaria/act0
# 解除
    effect give @s invisibility 3 72 true