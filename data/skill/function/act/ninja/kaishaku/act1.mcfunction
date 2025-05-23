#> skill:act/ninja/kaishaku/act1
#
# 介錯範囲化

# Level2のときは1000tick + 10000で区別
scoreboard players set _ _ 167
execute if score _ Level matches 2 run scoreboard players set _ _ 10333

scoreboard players operation @a[distance=0.1..16] Kaishaku = _ _

tellraw @a[distance=..16] [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@a[distance=..16]"},{"translate":"介錯","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}}}]}]
execute at @a[distance=..16] run function makeup:skill/act/ninja/kaishaku/act0
