#> skill:act/common/confusion_debaria/one_second
#
# 1秒ごとの処理
#
# @within function skill:one_second_player

# スコア減少
    scoreboard players remove @s ConfusionDebaria 1
# 0で終了
    execute if score @s ConfusionDebaria matches ..0 run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"コンフュージョンデバリア","color":"#DBD4A6","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"1分間『特殊デバフ：混乱』を無効化する。"},"color":"white"}}]}]
    scoreboard players reset @s[scores={ConfusionDebaria=..0}] ConfusionDebaria
# 演出
    function makeup:skill/act/common/confusion_debaria/one_second