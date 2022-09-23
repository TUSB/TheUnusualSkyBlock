scoreboard players set $Pos-X-X _ 0
scoreboard players set $Pos-X-Y _ 0
scoreboard players set $Pos-X-Z _ 0

execute unless score $Pos-X _ matches 0 run function calc:rotate/calculate_pos/x/1
execute unless score $Pos-Y _ matches 0 run function calc:rotate/calculate_pos/x/2
execute unless score $Pos-Z _ matches 0 run function calc:rotate/calculate_pos/x/3


scoreboard players operation $Pos-X-X _ *= $Pos-X _
scoreboard players operation $Pos-X-Y _ *= $Pos-Y _
scoreboard players operation $Pos-X-Z _ *= $Pos-Z _

## 回転後のX座標
scoreboard players operation $Rotated-Pos-X _ += $Pos-X-X _
scoreboard players operation $Rotated-Pos-X _ += $Pos-X-Y _
scoreboard players operation $Rotated-Pos-X _ += $Pos-X-Z _