
execute if data storage main: difficult.change_to run tellraw @a ["",{"translate":"難易度変更は否決されました。","color":"red"}]

data remove storage main: difficult.change_to
scoreboard players reset $World ChangeDifficulty
scoreboard players set @s ChangeDifficulty 0