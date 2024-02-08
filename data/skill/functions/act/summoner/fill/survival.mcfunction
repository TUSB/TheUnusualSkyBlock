##############################
### フィール発動：サバイバル
##############################

#FillSizeの上限を設定
scoreboard players add _ Level 2
execute unless score @s FillSize matches 1.. run scoreboard players operation @s FillSize = _ Level
scoreboard players operation _ FillSize = @s FillSize
scoreboard players operation _ FillSize < _ Level
execute if entity @a[distance=..32,scores={Burst=0..,Job=7}] run scoreboard players remove _ Level 1
#スポナーが近くにあった場合、アドベンチャーフィールを実行する
execute if score _ FillSize matches 1 if entity @e[type=item_display,limit=1,distance=..2,tag=Spawner] store success score _ Level run scoreboard players reset _ FillSize
execute if score _ FillSize matches 2 if entity @e[type=item_display,limit=1,distance=..3,tag=Spawner] store success score _ Level run scoreboard players reset _ FillSize
execute if score _ FillSize matches 3 if entity @e[type=item_display,limit=1,distance=..4,tag=Spawner] store success score _ Level run scoreboard players reset _ FillSize
execute if score _ FillSize matches 4 if entity @e[type=item_display,limit=1,distance=..5,tag=Spawner] store success score _ Level run scoreboard players reset _ FillSize
execute if score _ FillSize matches 5 if entity @e[type=item_display,limit=1,distance=..6,tag=Spawner] store success score _ Level run scoreboard players reset _ FillSize
execute if score _ FillSize matches 6 if entity @e[type=item_display,limit=1,distance=..7,tag=Spawner] store success score _ Level run scoreboard players reset _ FillSize
execute unless score _ FillSize matches 1..6 run function skill:act/summoner/fill/adventure

execute if score _ FillSize matches 1 run function skill:act/summoner/fill/level1
execute if score _ FillSize matches 2 run function skill:act/summoner/fill/level3
execute if score _ FillSize matches 3 run function skill:act/summoner/fill/level5
execute if score _ FillSize matches 4 run function skill:act/summoner/fill/level7
execute if score _ FillSize matches 5 run function skill:act/summoner/fill/level9
execute if score _ FillSize matches 6 run function skill:act/summoner/fill/level11
#演出
function makeup:skill/act/summoner/fill/survival
