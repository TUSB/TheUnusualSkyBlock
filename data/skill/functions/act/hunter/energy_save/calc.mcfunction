
### エナジーセーブ効果適用

scoreboard players set _ Calc 4
scoreboard players operation _ MP *= @s EnergySave
scoreboard players operation _ MP /= _ Calc 

scoreboard players remove @s EnergySave 1
execute if score @s EnergySave matches ..0 run tellraw @a [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"消費MPが少なくなる。","color":"white"}}}]}]

scoreboard players reset @s[scores={EnergySave=..0}] EnergySave
