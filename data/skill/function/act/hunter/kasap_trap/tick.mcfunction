#> skill:act/hunter/kasap_trap/tick
#
# ルカナントラップ継続

# ダメージ増加倍率を取得
execute store result score @e[tag=Enemy,distance=..5] KasapRatio run data get entity @s ReapplicationDelay

# タグ・スコア適用
tag @e[tag=Enemy,distance=..5] add Kasap
scoreboard players set @e[tag=Enemy,distance=..5] Kasap 100

# 演出
function makeup:skill/act/hunter/kasap_trap/tick
