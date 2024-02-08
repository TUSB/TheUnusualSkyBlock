#> skill:act/common/paralysis_debaria/act0
#
# 病気 デバリア
#
# @within function skill:practice/act/common

# 効果
    scoreboard players set @s ParalysisDebaria 60
    tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"パラライズデバリア","color":"#FFAD00","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"1分間『%1$s』を無効化する。","with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Palsy"}]}]},"color":"white"}}]}]
# 効果音
    function makeup:skill/act/common/paralysis_debaria/act0
# 解除
    effect give @s invisibility 3 74 true