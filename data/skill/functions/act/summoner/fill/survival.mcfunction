##############################
### フィール発動：サバイバル
##############################

execute if score @s FillSize matches 1 run function skill:act/summoner/fill/level1
execute if score @s FillSize matches 2 run function skill:act/summoner/fill/level3
execute if score @s FillSize matches 3 run function skill:act/summoner/fill/level5
execute if score @s FillSize matches 4 run function skill:act/summoner/fill/level7
execute if score @s FillSize matches 5 run function skill:act/summoner/fill/level9
#演出
function makeup:skill/act/summoner/fill/survival
