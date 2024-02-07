#> skill:act/common/super_debaria/act0
#
# スーパーデバリア
#
# @within function skill:practice/act/common

# 効果
    scoreboard players set @s DoomDebaria 60
    scoreboard players set @s BurnDebaria -1
    scoreboard players set @s FreezeDebaria -1
    scoreboard players set @s ParalysisDebaria -1
    scoreboard players set @s DiseaseDebaria -1
    scoreboard players set @s ConfusionDebaria -1
    tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"スーパーデバリア","color":"#80FFD2","bold":true,"hoverEvent":{"action":"show_text","value":[{"translate":"1分間、ほとんどの特殊デバフを無効化する。\n"},{"translate":"トントやペイル、強力な死の宣告は無効化されない。"}],"color":"white"}}]}]
# 効果音
    function makeup:skill/act/common/paralysis_debaria/act0
# 解除
    effect give @s invisibility 3 71 true
    effect give @s invisibility 3 72 true
    effect give @s invisibility 3 73 true
    effect give @s invisibility 3 74 true
    effect give @s invisibility 3 75 true
    effect give @s invisibility 3 77 true