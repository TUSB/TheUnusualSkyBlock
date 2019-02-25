##############################
### 置換 ディメンション分岐
##############################

#Tick最初のみ乱数更新
execute unless score $Replaced Global matches 2 run function calc_manager:update_random
execute unless score $Replaced Global matches 2 run scoreboard players operation $Random Global %= $10000 Const
scoreboard players set $Replaced Global 2

execute store result score $Dimension Global run scoreboard players get @a[gamemode=!creative,gamemode=!spectator,limit=1,sort=nearest] Dimension

execute if score $Dimension Global matches 0 run function enemy_manager:replace/global
execute if score $Dimension Global matches 11 run function enemy_manager:replace/theater
execute if score $Dimension Global matches 13 run function enemy_manager:replace/tablemountain
execute if score $Dimension Global matches 14 run function enemy_manager:replace/clouder
execute if score $Dimension Global matches 15 run function enemy_manager:replace/gulliver
execute if score $Dimension Global matches 16 run function enemy_manager:replace/tocult
execute if score $Dimension Global matches 100 run function enemy_manager:replace/nether
execute if score $Dimension Global matches 110 run function enemy_manager:replace/purgatory
execute if score $Dimension Global matches 210 run function enemy_manager:replace/end

#execute if score $Dimension Global matches  run function enemy_manager:replace/backtheater
#execute if score $Dimension Global matches  run function enemy_manager:replace/desert
#execute if score $Dimension Global matches  run function enemy_manager:replace/questworld

tag @s add Garbage