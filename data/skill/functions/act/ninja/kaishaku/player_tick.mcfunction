
### 介錯効果消費

execute if score @s Kaishaku matches 1 run tellraw @a [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"介錯","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}}}]}]
scoreboard players remove @s Kaishaku 1
scoreboard players reset @s[scores={Kaishaku=..0}] Kaishaku
scoreboard players reset @s[scores={Kaishaku=9000..10000}] Kaishaku

#半径10のモブに介錯を約4秒付与
#Level2のときは4秒 + 100で区別
execute if entity @s[scores={Kaishaku=0..9000}] run scoreboard players set @e[tag=Mob,distance=..10] Kaishaku 4
execute if entity @s[scores={Kaishaku=10000..}] run scoreboard players set @e[tag=Mob,distance=..10] Kaishaku 104
