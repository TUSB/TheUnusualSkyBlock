##############################
### タクティカルヒール適用
##############################

###継続判定
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
scoreboard players operation $Random Global += @s TacticalHeal
scoreboard players remove @s TacticalHeal 10
execute if score $Random Global matches ..99 run scoreboard players reset @s TacticalHeal
execute unless score @s TacticalHeal matches 0.. run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"タクティカルヒール","color":"white","hoverEvent":{"action":"show_text","value":"大ダメージを受けた時、体力を大きく回復する。","color":"white"}},"の効果が切れた。"]

###適用
scoreboard players operation $Heal Global = @s DamageTaken
scoreboard players operation $Heal Global /= $10 Const
scoreboard players operation @s HealthHealing += $Heal Global

###---演出---Start
particle minecraft:heart ~ ~1 ~ 0.2 1 0.2 0 20 force
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 2
###---演出---End
