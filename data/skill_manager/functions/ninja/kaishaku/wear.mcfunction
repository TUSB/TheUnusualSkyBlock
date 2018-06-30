##############################
### 介錯効果消費
##############################

execute as @e[distance=..10,tag=Mob,nbt={HurtTime:10s}] at @s run function skill_manager:ninja/kaishaku/say
execute if score @s Kaishaku matches 1 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"介錯","color":"white","hoverEvent":{"action":"show_text","value":"敵を倒した際に、敵が爆発四散するようになる。","color":"white"}},"の効果が切れた。"]
scoreboard players remove @s Kaishaku 1
