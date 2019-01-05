##############################
### クエスト進行度合表示処理
##############################

###達成条件:石を64個納品
execute store result score @s Global run clear @s stone 0
execute if score @s Global matches 65.. run scoreboard players set @s Global 64

###メッセージ表示
tellraw @s ["",{"text":"「テスト」の進行状況\n"},{"text":"・石を64個納品する："},{"score":{"name":"*","objective":"Global"}},{"text":"/64"}]
