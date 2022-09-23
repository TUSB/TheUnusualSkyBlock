scoreboard players set $Pos-Z-X _ 0
scoreboard players set $Pos-Z-Y _ 0
scoreboard players set $Pos-Z-Z _ 0

execute unless score $Pos-X _ matches 0 run function calc:rotate/calculate_pos/z/1
execute unless score $Pos-Y _ matches 0 run function calc:rotate/calculate_pos/z/2
execute unless score $Pos-Z _ matches 0 run function calc:rotate/calculate_pos/z/3


scoreboard players operation $Pos-Z-X _ *= $Pos-X _
scoreboard players operation $Pos-Z-Y _ *= $Pos-Y _
scoreboard players operation $Pos-Z-Z _ *= $Pos-Z _

## 回転後のZ座標
scoreboard players operation $Rotated-Pos-Z _ += $Pos-Z-X _
scoreboard players operation $Rotated-Pos-Z _ += $Pos-Z-Y _
scoreboard players operation $Rotated-Pos-Z _ += $Pos-Z-Z _