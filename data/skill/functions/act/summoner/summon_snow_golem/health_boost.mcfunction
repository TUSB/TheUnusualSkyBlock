##############################
### サモンＰ：スノー
##############################

#体力強化
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.02 run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 100
effect give @s minecraft:slow_falling 1000000 0 true
