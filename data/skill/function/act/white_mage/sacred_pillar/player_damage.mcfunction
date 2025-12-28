#> skill:act/white_mage/sacred_pillar/player_damage

# 代償ダメージ
execute store result score _ Calc run attribute @s minecraft:max_health get 25
execute store result score _ _ run data get entity @s AbsorptionAmount 25
scoreboard players operation _ Calc += _ _

data modify storage entity: damage set value {unreasonable:6,deathcause:'[{"translate":"聖域を生み出すために%1$sはチリとなった","with":[{"selector":"@s"}]}]'}
execute store result storage entity: damage.unreasonable double 0.01 run scoreboard players get _ Calc

function entity:damage/apply/
