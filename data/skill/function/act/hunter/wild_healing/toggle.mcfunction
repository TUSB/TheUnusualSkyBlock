#> skill:act/hunter/wild_healing/toggle
#
# ワイルドヒーリング 人参棒でトグル

scoreboard players set _ _ 0
execute if score @s WildHealing = _ Level store success score _ _ run scoreboard players reset @s WildHealing
execute unless score @s WildHealing = _ Level if score _ _ matches 0 run scoreboard players operation @s WildHealing = _ Level

#演出
function makeup:skill/act/hunter/wild_healing/toggle
