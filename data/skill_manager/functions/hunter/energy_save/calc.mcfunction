##############################
### エナジーセーブ効果適用
##############################

scoreboard players operation @s ActiveCost *= @s EnergySave
scoreboard players operation @s ActiveCost /= $4 Const
scoreboard players operation @s SupportCost *= @s EnergySave
scoreboard players operation @s SupportCost /= $4 Const

scoreboard players remove @s EnergySave 1
execute if score @s EnergySave matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":"消費MPが少なくなる。","color":"white"}},"の効果が切れた。"]

scoreboard players reset @s[scores={EnergySave=..0}] EnergySave
