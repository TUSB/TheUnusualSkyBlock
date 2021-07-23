##############################
### アイサツ効果適用
##############################

scoreboard players operation _ MP -= @s Aisatsu
execute if score _ MP matches ..-1 run scoreboard players set _ MP 0

scoreboard players reset @s Aisatsu
