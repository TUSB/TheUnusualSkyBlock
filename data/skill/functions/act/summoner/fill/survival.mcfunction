##############################
### フィール発動：サバイバル
##############################

#FillSizeの上限を設定
scoreboard players add _ Level 1
execute unless score @s FillSize matches 1.. run scoreboard players operation @s FillSize = _ Level
scoreboard players operation @s FillSize < _ Level
scoreboard players operation _ FillSize = @s FillSize
#execute if entity @s[tag=からくりオーラ] run scoreboard players add _ FillSize 1

execute if score _ FillSize matches 1 run function skill:act/summoner/fill/level1
execute if score _ FillSize matches 2 run function skill:act/summoner/fill/level3
execute if score _ FillSize matches 3 run function skill:act/summoner/fill/level5
execute if score _ FillSize matches 4 run function skill:act/summoner/fill/level7
execute if score _ FillSize matches 5 run function skill:act/summoner/fill/level9
#演出
function makeup:skill/act/summoner/fill/survival
