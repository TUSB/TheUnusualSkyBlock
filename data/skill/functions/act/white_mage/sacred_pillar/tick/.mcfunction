
### セイクリッドピラー発動中

execute store result score _ Interval run data get entity @s Duration
###ダメージ
scoreboard players remove @s Interval 1
execute unless score @s Interval matches 1.. run function skill:act/white_mage/sacred_pillar/tick/damage

###消滅演出
execute store result entity @s Duration int 1 run scoreboard players get _ Interval
execute if score _ Interval matches ..1 run function makeup:skill/act/white_mage/sacred_pillar/failure

###演出
execute if score @s Level matches 1 run function makeup:skill/act/white_mage/sacred_pillar/tick/level1
execute if score @s Level matches 2 run function makeup:skill/act/white_mage/sacred_pillar/tick/level2
execute if score @s Level matches 3 run function makeup:skill/act/white_mage/sacred_pillar/tick/level3
