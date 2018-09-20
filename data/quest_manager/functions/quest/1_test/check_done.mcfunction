##############################
### クエスト達成しているか確認処理
##############################

###達成条件:石を64個納品
execute store result score @s Global run clear @s stone 0
execute if score @s Global matches 64.. run tag @s add QuestDone