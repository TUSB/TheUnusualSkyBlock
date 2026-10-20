
scoreboard players remove @s Weakness 1
execute if score @s Weakness matches ..0 run function skill:act/common/weakness_paint/clear
execute if score @s Weakness matches 900..1000 run function skill:act/common/weakness_paint/clear

function makeup:skill/act/common/weakness_paint/one_second
