##############################
### クエスト消去処理
##############################

###引数Global：QuestID
execute if score @s Quest1 = @s Global run scoreboard players set @s Quest1 0
execute if score @s Quest2 = @s Global run scoreboard players set @s Quest2 0
execute if score @s Quest3 = @s Global run scoreboard players set @s Quest3 0
execute if score @s Quest4 = @s Global run scoreboard players set @s Quest4 0
execute if score @s Quest5 = @s Global run scoreboard players set @s Quest5 0

###詰める
execute if score @s Quest1 matches 0 if score @s Quest2 matches 1.. run scoreboard players operation @s Quest1 >< @s Quest2
execute if score @s Quest2 matches 0 if score @s Quest3 matches 1.. run scoreboard players operation @s Quest2 >< @s Quest3
execute if score @s Quest3 matches 0 if score @s Quest4 matches 1.. run scoreboard players operation @s Quest3 >< @s Quest4
execute if score @s Quest4 matches 0 if score @s Quest5 matches 1.. run scoreboard players operation @s Quest4 >< @s Quest5