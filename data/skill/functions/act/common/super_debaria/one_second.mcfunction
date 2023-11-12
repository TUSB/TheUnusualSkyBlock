#> skill:act/common/super_debaria/one_second
#
# 1秒ごとの処理
#
# @within function skill:one_second_player

# スコア減少
    scoreboard players remove @s DoomDebaria 1
# 0で終了
    execute if score @s DoomDebaria matches ..0 run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"スーパーデバリア","color":"#80FFD2","bold":true,"hoverEvent":{"action":"show_text","value":[{"translate":"1分間、ほとんどの特殊デバフを無効化する。\n"},{"translate":"トントやペイル、強力な死の宣告は無効化されない。"}],"color":"white"}}]}]
    scoreboard players reset @s[scores={DoomDebaria=..0}] BurnDebaria
    scoreboard players reset @s[scores={DoomDebaria=..0}] FreezeDebaria
    scoreboard players reset @s[scores={DoomDebaria=..0}] BurnDebaria
    scoreboard players reset @s[scores={DoomDebaria=..0}] DiseaseDebaria
    scoreboard players reset @s[scores={DoomDebaria=..0}] ConfusionDebaria
    scoreboard players reset @s[scores={DoomDebaria=..0}] DoomDebaria
# 演出
    function makeup:skill/act/common/super_debaria/one_second