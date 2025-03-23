#> skill:act/knight/iron_will/sneak
### アイアンウィル範囲化
scoreboard players set _ _ 3
execute as @a[distance=0.1..15] run scoreboard players operation @s IronWill = _ IronWill
execute as @a[distance=0.1..15] run scoreboard players operation @s IronWill /= _ _

execute as @a[distance=..15] run attribute @s minecraft:generic.knockback_resistance base set 1
execute as @a[distance=..15] run attribute @s minecraft:generic.explosion_knockback_resistance base set 1

tellraw @a[distance=..15] [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@a[distance=..15]"},{"translate":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"ノックバックしなくなる。","color":"white"}}}]}]

function makeup:skill/act/knight/iron_will/act0
