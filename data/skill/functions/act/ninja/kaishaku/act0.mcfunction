
### 介錯発動

scoreboard players set @s Kaishaku 500
execute if score _ Level matches 2 run scoreboard players set @s Kaishaku 1000

execute unless score @s SneakTime matches 1.. run tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"介錯","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}}}]}]
execute if score @s SneakTime matches 1.. run tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@a[distance=..15]"},{"translate":"介錯","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}}}]}]

function makeup:skill/act/ninja/kaishaku/act0
