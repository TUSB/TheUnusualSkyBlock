##############################
### サモンＰ：スノー
##############################

#体力強化
execute store result entity @s attributes[{id:"minecraft:max_health"}].base double 0.02 run data get entity @s attributes[{id:"minecraft:max_health"}].base 100
effect give @s minecraft:slow_falling infinite 0 true
