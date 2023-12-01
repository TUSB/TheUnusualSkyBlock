#> skill:act/common/paralysis_debaria/one_second
#
# 1秒ごとの処理
#
# @within function skill:one_second_player

# スコア減少
    scoreboard players remove @s ParalysisDebaria 1
# 0で終了
    execute if score @s ParalysisDebaria matches ..0 run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"パラライズデバリア","color":"#FFAD00","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"1分間『%1$s』を無効化する。","with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Palsy"}]}]},"color":"white"}}]}]
    scoreboard players reset @s[scores={ParalysisDebaria=..0}] ParalysisDebaria
# 演出
    function makeup:skill/act/common/paralysis_debaria/one_second