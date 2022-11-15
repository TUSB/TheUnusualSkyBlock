#https://ja.wolframalpha.com/input?i=y%28sin%28X%29sin%28Y%29sin%28Z%29%2Bcos%28X%29cos%28Z%29%29%2Bz%28sin%28Y%29sin%28Z%29cos%28X%29%E2%88%92sin%28X%29cos%28Z%29%29%2Bxsin%28Z%29cos%28Y%29
scoreboard players set $Pos-Y-X _ 0
scoreboard players set $Pos-Y-Y _ 0
scoreboard players set $Pos-Y-Z _ 0

#end
execute unless score $Pos-X _ matches 0 run function calc:rotate/calculate_pos/y/1
#end
execute unless score $Pos-Y _ matches 0 run function calc:rotate/calculate_pos/y/2
#end
execute unless score $Pos-Z _ matches 0 run function calc:rotate/calculate_pos/y/3


scoreboard players operation $Pos-Y-X _ *= $Pos-X _
scoreboard players operation $Pos-Y-Y _ *= $Pos-Y _
scoreboard players operation $Pos-Y-Z _ *= $Pos-Z _

## 回転後のY座標
scoreboard players operation $Rotated-Pos-Y _ += $Pos-Y-X _
scoreboard players operation $Rotated-Pos-Y _ += $Pos-Y-Y _
scoreboard players operation $Rotated-Pos-Y _ += $Pos-Y-Z _