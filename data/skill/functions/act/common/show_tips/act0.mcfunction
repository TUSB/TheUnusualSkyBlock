

execute unless score @s SneakTime matches 1.. run function player:tips/show
execute if score @s SneakTime matches 1.. run function skill:act/common/show_tips/sneak

effect give @s minecraft:saturation 1 0 true
function makeup:skill/act/common/show_tips/act0
