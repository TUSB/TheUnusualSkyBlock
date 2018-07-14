##############################
### 介錯発動
##############################

scoreboard players set @s Kaishaku 500
execute if score @s SupportSkill matches 22082 run scoreboard players set @s Kaishaku 1000
execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"介錯","color":"white","hoverEvent":{"action":"show_text","value":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"介錯","color":"white","hoverEvent":{"action":"show_text","value":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}},"の効果！"]
