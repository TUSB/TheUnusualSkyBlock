
### アイアンウィル発動

execute if score _ Level matches 1 run scoreboard players set @s IronWill 100
execute if score _ Level matches 2 run scoreboard players set @s IronWill 400
execute if score _ Level matches 3 run scoreboard players set @s IronWill 800

execute unless score @s SneakTime matches 1.. run tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"ノックバックしなくなる。","color":"white"}}}]}]
execute if score @s SneakTime matches 1.. run tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@a[distance=..15]"},{"translate":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"ノックバックしなくなる。","color":"white"}}}]}]

function makeup:skill/act/knight/iron_will/act0
