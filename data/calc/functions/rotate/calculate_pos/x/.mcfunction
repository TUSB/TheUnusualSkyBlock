#https://ja.wolframalpha.com/input?i=z%28sin%28Y%29cos%28X%29cos%28Z%29%2Bsin%28X%29sin%28Z%29%29%2By%28sin%28X%29sin%28Y%29cos%28Z%29%E2%88%92sin%28Z%29cos%28X%29%29%2Bxcos%28Y%29cos%28Z%29
scoreboard players set $Pos-X-X _ 0
scoreboard players set $Pos-X-Y _ 0
scoreboard players set $Pos-X-Z _ 0

#end
execute unless score $Pos-X _ matches 0 run function calc:rotate/calculate_pos/x/1
#end
execute unless score $Pos-Y _ matches 0 run function calc:rotate/calculate_pos/x/2
#end
execute unless score $Pos-Z _ matches 0 run function calc:rotate/calculate_pos/x/3


scoreboard players operation $Pos-X-X _ *= $Pos-X _
scoreboard players operation $Pos-X-Y _ *= $Pos-Y _
scoreboard players operation $Pos-X-Z _ *= $Pos-Z _

## 回転後のX座標
scoreboard players operation $Rotated-Pos-X _ += $Pos-X-X _
scoreboard players operation $Rotated-Pos-X _ += $Pos-X-Y _
scoreboard players operation $Rotated-Pos-X _ += $Pos-X-Z _