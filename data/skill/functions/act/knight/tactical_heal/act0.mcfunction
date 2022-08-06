
### タクティカルヒール発動

function makeup:skill/act/knight/tactical_heal/act

execute if score _ Level matches 1 run scoreboard players set @s TacticalHeal 100
execute if score _ Level matches 2 run scoreboard players set @s TacticalHeal 140
execute if score _ Level matches 3 run scoreboard players set @s TacticalHeal 200

tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"タクティカルヒール","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"大ダメージを受けた時、体力を大きく回復する。","color":"white"}}}]}]
