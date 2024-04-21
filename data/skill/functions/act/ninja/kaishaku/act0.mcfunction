
### 介錯発動

#Level2のときは1000tick + 10000で区別
scoreboard players set _ _ 500
execute if score _ Level matches 2 run scoreboard players set _ _ 11000

scoreboard players operation @s Kaishaku = _ _
execute if score @s SneakTime matches 1.. run function skill:act/ninja/kaishaku/act1

execute unless score @s SneakTime matches 1.. run tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"介錯","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}}}]}]
execute if score @s SneakTime matches 1.. run tellraw @a[distance=..16] [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@a[distance=..16]"},{"translate":"介錯","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}}}]}]

execute unless score @s SneakTime matches 1.. run function makeup:skill/act/ninja/kaishaku/act0
execute if score @s SneakTime matches 1.. at @a[distance=..16] run function makeup:skill/act/ninja/kaishaku/act0
