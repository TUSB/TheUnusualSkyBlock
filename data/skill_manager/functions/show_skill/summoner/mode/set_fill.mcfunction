##############################
### 召喚士フィールサイズ設定
##############################

###フィールサイズ設定
execute as @s[scores={ModeSkillRed=61011,SetFillSize=1..3}] run scoreboard players operation @s FillSize = @s SetFillSize
execute as @s[scores={ModeSkillRed=61012,SetFillSize=1..4}] run scoreboard players operation @s FillSize = @s SetFillSize
execute as @s[scores={ModeSkillRed=61013,SetFillSize=1..5}] run scoreboard players operation @s FillSize = @s SetFillSize
###表示用計算
scoreboard players operation $FillSize Global = @s FillSize
scoreboard players operation $FillSize Global *= $2 Const
scoreboard players remove $FillSize Global 1
###表示
execute as @s[scores={ModeSkillRed=61011,SetFillSize=1..3}] run tellraw @s [{"text":"サイズを変更しました。","color":"green","bold":true},{"text":"➡","color":"white"},{"score":{"name":"$FillSize","objective":"Global"},"color":"white"},{"text":"x","color":"white"},{"score":{"name":"$FillSize","objective":"Global"},"color":"white"}]
execute as @s[scores={ModeSkillRed=61012,SetFillSize=1..4}] run tellraw @s [{"text":"サイズを変更しました。","color":"green","bold":true},{"text":"➡","color":"white"},{"score":{"name":"$FillSize","objective":"Global"},"color":"white"},{"text":"x","color":"white"},{"score":{"name":"$FillSize","objective":"Global"},"color":"white"}]
execute as @s[scores={ModeSkillRed=61013,SetFillSize=1..5}] run tellraw @s [{"text":"サイズを変更しました。","color":"green","bold":true},{"text":"➡","color":"white"},{"score":{"name":"$FillSize","objective":"Global"},"color":"white"},{"text":"x","color":"white"},{"score":{"name":"$FillSize","objective":"Global"},"color":"white"}]
###再クリック時にエラーがでないように
scoreboard players reset @s SetFillSize
scoreboard players enable @s SetFillSize
