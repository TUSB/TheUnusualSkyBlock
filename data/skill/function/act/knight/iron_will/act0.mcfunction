#> skill:act/knight/iron_will/act0
### アイアンウィル発動

execute if score _ Level matches 1 run scoreboard players set _ IronWill 100
execute if score _ Level matches 2 run scoreboard players set _ IronWill 400
execute if score _ Level matches 3 run scoreboard players set _ IronWill 800

scoreboard players operation @s IronWill = _ IronWill

# 範囲化
execute if score @s SneakTime matches 1.. as @a[distance=0.01..15] at @s run function skill:act/knight/iron_will/sneak

attribute @s minecraft:generic.knockback_resistance base set 1
attribute @s minecraft:generic.explosion_knockback_resistance base set 1

execute unless score @s SneakTime matches 1.. run tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"ノックバックしなくなる。","color":"white"}}}]}]
execute if score @s SneakTime matches 1.. run tellraw @a[distance=..15] [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@a[distance=..15]"},{"translate":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"ノックバックしなくなる。","color":"white"}}}]}]

function makeup:skill/act/knight/iron_will/act0
