scoreboard players set $Pos-Y-X _ 0
scoreboard players set $Pos-Y-Y _ 0
scoreboard players set $Pos-Y-Z _ 0

execute unless score $Pos-X _ matches 0 run function calc:rotate/calculate_pos/y/1
execute unless score $Pos-Y _ matches 0 run function calc:rotate/calculate_pos/y/2
execute unless score $Pos-Z _ matches 0 run function calc:rotate/calculate_pos/y/3


scoreboard players operation $Pos-Y-X _ *= $Pos-X _
scoreboard players operation $Pos-Y-Y _ *= $Pos-Y _
scoreboard players operation $Pos-Y-Z _ *= $Pos-Z _

## 回転後のY座標
scoreboard players operation $Rotated-Pos-Y _ += $Pos-Y-X _
scoreboard players operation $Rotated-Pos-Y _ += $Pos-Y-Y _
scoreboard players operation $Rotated-Pos-Y _ += $Pos-Y-Z _