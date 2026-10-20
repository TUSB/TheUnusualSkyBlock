##############################
### メテオストライク tick
##############################

tp @s ^ ^ ^2
scoreboard players remove @s[scores={Interval=1..}] Interval 1
scoreboard players remove @s[scores={Calc=1..}] Calc 2

#ダメージ
execute unless score @s Calc matches 1.. if entity @e[tag=Enemy,distance=..4.5] run function skill:act/black_mage/meteor_strike/tick_damage

#演出
function makeup:skill/act/black_mage/meteor_strike/tick

#爆発
execute if entity @s[scores={Interval=..0}] unless block ~ ~ ~ #smart_motion:no_collision run function skill:act/black_mage/meteor_strike/explosion
