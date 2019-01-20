##############################
### ワイルドカード バナー着色＆効果決定
##############################

scoreboard players set @s WildCard 10000000
#A 0~4
function calc_manager:update_random
scoreboard players operation $WildCard Global = $Random Global
scoreboard players operation $WildCard Global *= $5 Const
scoreboard players operation $WildCard Global /= $MWCBase Const
scoreboard players operation $WildCard Global *= $1000000 Const
scoreboard players operation @s WildCard += $WildCard Global
#B 0~3
function calc_manager:update_random
scoreboard players operation $WildCard Global = $Random Global
scoreboard players operation $WildCard Global *= $4 Const
scoreboard players operation $WildCard Global /= $MWCBase Const
scoreboard players operation $WildCard Global *= $100000 Const
scoreboard players operation @s WildCard += $WildCard Global
#C 0~3
function calc_manager:update_random
scoreboard players operation $WildCard Global = $Random Global
scoreboard players operation $WildCard Global *= $4 Const
scoreboard players operation $WildCard Global /= $MWCBase Const
scoreboard players operation $WildCard Global *= $10000 Const
scoreboard players operation @s WildCard += $WildCard Global
#F 0~2
function calc_manager:update_random
scoreboard players operation $WildCard Global = $Random Global
scoreboard players operation $WildCard Global *= $3 Const
scoreboard players operation $WildCard Global /= $MWCBase Const
#着色
execute if score $WildCard Global matches 0 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:mr,Color:15},{Pattern:hh,Color:15},{Pattern:bo,Color:0}]}}}]}
execute if score $WildCard Global matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:moj,Color:15}]}}}]}
execute if score $WildCard Global matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:15}]}}}]}

scoreboard players operation $WildCard Global *= $100 Const
scoreboard players operation @s WildCard += $WildCard Global
#D 0~3
function calc_manager:update_random
scoreboard players operation $WildCard Global = $Random Global
scoreboard players operation $WildCard Global *= $4 Const
scoreboard players operation $WildCard Global /= $MWCBase Const
scoreboard players operation $WildCard Global *= $10 Const
scoreboard players operation @s WildCard += $WildCard Global
#E 0~3
function calc_manager:update_random
scoreboard players operation $WildCard Global = $Random Global
scoreboard players operation $WildCard Global *= $4 Const
scoreboard players operation $WildCard Global /= $MWCBase Const
scoreboard players operation @s WildCard += $WildCard Global
