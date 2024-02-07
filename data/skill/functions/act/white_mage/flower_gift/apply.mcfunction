
### フラワーギフト適用

execute store result score _ Calc run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base 100
scoreboard players operation _ Calc *= _ _
execute store result entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base double 0.0001 run scoreboard players get _ Calc

tag @s add Gifted

#演出
function makeup:skill/act/white_mage/flower_gift/apply
