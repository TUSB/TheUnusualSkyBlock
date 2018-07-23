##############################
### サモンＰ：スノー
##############################

execute store result entity @s Attributes[0].Base double 0.02 run data get entity @s Attributes[0].Base 100
execute store result entity @s Attributes[0].Modifiers[0].Amount double 0.02 run data get entity @s Attributes[0].Modifiers[0].Amount 100
effect give @s minecraft:slow_falling 1000000 0 true
