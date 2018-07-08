##############################
### エナジーセーブ効果適用
##############################

scoreboard players operation @s ActiveCost *= @s EnergySave
scoreboard players operation @s ActiveCost /= $10 Const
scoreboard players operation @s SupportCost *= @s EnergySave
scoreboard players operation @s SupportCost /= $10 Const
scoreboard players reset @s EnergySave
