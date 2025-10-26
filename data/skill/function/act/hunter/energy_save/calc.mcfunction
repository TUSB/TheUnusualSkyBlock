
### エナジーセーブ効果適用

scoreboard players set _ Calc 4
scoreboard players operation _ EnergySave = _ Calc
scoreboard players operation _ EnergySave -= @s EnergySave
scoreboard players operation _ MP *= _ EnergySave
scoreboard players operation _ MP /= _ Calc

scoreboard players remove @s EnergySave 1
execute if score @s EnergySave matches ..0 run tellraw @a [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"自身の次に使うスキルの消費MPを減少する。","color":"white"}}}]}]

scoreboard players reset @s[scores={EnergySave=..0}] EnergySave
