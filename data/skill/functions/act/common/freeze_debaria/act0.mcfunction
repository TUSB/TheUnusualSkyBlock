#> skill:act/common/freeze_debaria/act0
#
# 凍結 デバリア
#
# @within function skill:practice/act/common

# 効果
    scoreboard players set @s FreezeDebaria 60
    tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"フリーズデバリア","color":"#08C4FF","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"1分間『特殊デバフ：凍結』を無効化する。"},"color":"white"}}]}]
# 効果音
    function makeup:skill/act/common/freeze_debaria/act0
# 解除
    effect give @s invisibility 3 73 true