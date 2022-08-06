
### タクティカルヒール適用

###継続判定
execute store result score _ Random run function calc:random
scoreboard players set _ Calc 100
scoreboard players operation _ Random %= _ Calc
scoreboard players operation _ Random += @s TacticalHeal
scoreboard players remove @s TacticalHeal 10
execute if score _ Random matches ..99 run scoreboard players reset @s TacticalHeal
execute unless score @s TacticalHeal matches 0.. run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"タクティカルヒール","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"大ダメージを受けた時、体力を大きく回復する。","color":"white"}}}]}]

###適用
scoreboard players operation _ HealthHealing = @s DamageTaken
scoreboard players set _ Calc 10
scoreboard players operation _ HealthHealing /= _ Calc
scoreboard players operation @s HealthHealing += _ HealthHealing

function makeup:skill/act/knight/tactical_heal/react
