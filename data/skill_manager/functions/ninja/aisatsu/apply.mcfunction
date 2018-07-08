##############################
### アイサツ効果適用
##############################

scoreboard players operation @s ActiveCost -= @s Aisatsu
scoreboard players operation @s ActiveCost > $0 Const
scoreboard players operation @s SupportCost -= @s Aisatsu
scoreboard players operation @s SupportCost > $0 Const
scoreboard players reset @s Aisatsu
