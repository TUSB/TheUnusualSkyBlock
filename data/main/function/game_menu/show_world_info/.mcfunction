#> main:game_menu/show_world_info/
# 200: 難易度と全攻略率
execute if score @s ChangeSettings matches 200 run function main:game_menu/show_world_info/all

#> 210-219: 通常世界
 execute if score @s ChangeSettings matches 210 run function main:game_menu/show_world_info/skylands/page_1
 execute if score @s ChangeSettings matches 211 run function main:game_menu/show_world_info/skylands/page_2
 execute if score @s ChangeSettings matches 212 run function main:game_menu/show_world_info/skylands/page_3
 execute if score @s ChangeSettings matches 213 run function main:game_menu/show_world_info/skylands/page_4
 execute if score @s ChangeSettings matches 214 run function main:game_menu/show_world_info/skylands/page_5
# 220-229: 飛空島
 execute if score @s ChangeSettings matches 220..229 run function main:game_menu/show_world_info/flying_island/
 