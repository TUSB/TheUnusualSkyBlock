##############################
### クエスト
##############################

###引数Global：QuestID
execute if score @s Quest4 matches 1.. if score @s Quest5 matches 0 run scoreboard players operation @s Quest5 = @s Global
execute if score @s Quest3 matches 1.. if score @s Quest4 matches 0 run scoreboard players operation @s Quest4 = @s Global
execute if score @s Quest2 matches 1.. if score @s Quest3 matches 0 run scoreboard players operation @s Quest3 = @s Global
execute if score @s Quest1 matches 1.. if score @s Quest2 matches 0 run scoreboard players operation @s Quest2 = @s Global
execute if score @s Quest1 matches 0 run scoreboard players operation @s Quest1 = @s Global