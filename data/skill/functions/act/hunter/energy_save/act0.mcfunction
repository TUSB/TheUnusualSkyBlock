
### エナジーセーブ発動

execute unless score @s SneakTime matches 1.. as @s run function skill:act/hunter/energy_save/apply
execute if score @s SneakTime matches 1.. as @a[distance=..15] run function skill:act/hunter/energy_save/apply

###メッセージ
execute unless score @s SneakTime matches 1.. run tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"消費MPが少なくなる。","color":"white"}}}]}]
execute if score @s SneakTime matches 1.. run tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@a[distance=..15]"},{"translate":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"消費MPが少なくなる。","color":"white"}}}]}]
