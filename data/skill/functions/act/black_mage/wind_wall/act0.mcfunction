
### ウィンドウォール発動

###Lv1:0~1200 Lv2:10000~11200
execute if score _ Level matches 1 run scoreboard players set @s WindWall 1200
execute if score _ Level matches 2 run scoreboard players set @s WindWall 11200

execute if score @s SneakTime matches 1.. if score _ Level matches 1 run scoreboard players set @a[distance=..15] WindWall 1200
execute if score @s SneakTime matches 1.. if score _ Level matches 2 run scoreboard players set @s[distance=..15] WindWall 11200

function makeup:skill/act/black_mage/wind_wall/act0
