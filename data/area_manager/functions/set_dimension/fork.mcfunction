##############################
### 値設定分岐処理
##############################

execute store result score $X Global run data get entity @s X
execute store result score $Z Global run data get entity @s Z
execute store result score $MCDimension Global run data get entity @s Dimension
execute if score $MCDimension Global matches 0 run function area_manager:set_dimension/in_overworld
execute if score $MCDimension Global matches -1 run function area_manager:set_dimension/in_the_nether
execute if score $MCDimension Global matches 1 run function area_manager:set_dimension/in_the_end
