##############################
### フィールサイズ設定表示
##############################

#FillSizeの上限を設定
scoreboard players set _ FillSize 3
execute if data entity @s Inventory[{tag:{Skill:{Name:"フィール",Level:2}}}] run scoreboard players set _ FillSize 4
execute if data entity @s Inventory[{tag:{Skill:{Name:"フィール",Level:3}}}] run scoreboard players set _ FillSize 5
execute unless score @s FillSize matches 1.. run scoreboard players operation @s FillSize = _ FillSize
scoreboard players operation @s FillSize < _ FillSize

data modify block 2 3 2 Text1 set value '[{"translate":"・フィールサイズ:","bold":true}]'
#1
execute if score @s FillSize matches 1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"1x1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 101"}}]'
execute unless score @s FillSize matches 1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"1x1","color":"white","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 101"}}]'
#2
execute if score @s FillSize matches 2 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"3x3","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 102"}}]'
execute unless score @s FillSize matches 2 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"3x3","color":"white","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 102"}}]'
#3
execute if score @s FillSize matches 3 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"5x5","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 103"}}]'
execute unless score @s FillSize matches 3 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"5x5","color":"white","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 103"}}]'
#4
execute if score _ FillSize matches 4..5 if score @s FillSize matches 4 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"7x7","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 104"}}]'
execute if score _ FillSize matches 4..5 unless score @s FillSize matches 4 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"7x7","color":"white","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 104"}}]'
#5
execute if score _ FillSize matches 5 if score @s FillSize matches 5 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"9x9","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 105"}}]'
execute if score _ FillSize matches 5 unless score @s FillSize matches 5 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"text":" "},{"text":"9x9","color":"white","clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 105"}}]'

tellraw @s {"block":"2 3 2","nbt":"Text1","interpret":true}
