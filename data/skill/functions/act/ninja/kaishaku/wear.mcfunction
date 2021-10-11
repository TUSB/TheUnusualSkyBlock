
### 介錯効果消費

execute if score @s Kaishaku matches 1 run tellraw @a [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"介錯","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}}}]}]
scoreboard players remove @s Kaishaku 1
scoreboard players reset @s[scores={Kaishaku=..0}] Kaishaku
