
###レベルが上限値に達している

tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [{"translate":"この職業のレベルは上限に達しています。","color":"red"}]

#成功時音取り消し
#失敗時メッセージ取り消し
scoreboard players reset _ Exp
