function calc:rotate/get_angle
function calc:rotate/get_sincos

## 現在座標を100倍で取得
execute store result score $Pos-X _ run data get entity @s Pos[0] 100
execute store result score $Pos-Y _ run data get entity @s Pos[1] 100
execute store result score $Pos-Z _ run data get entity @s Pos[2] 100

##回転後の座標
scoreboard players set $Rotated-Pos-X _ 0
scoreboard players set $Rotated-Pos-Y _ 0
scoreboard players set $Rotated-Pos-Z _ 0

## X座標の計算
function calc:rotate/calculate_pos/x/

## Y座標の計算
function calc:rotate/calculate_pos/y/

## Z座標の計算
function calc:rotate/calculate_pos/z/


##座標に代入
execute store result entity @s Pos[0] double 0.00001 run scoreboard players get $Rotated-Pos-X _
execute store result entity @s Pos[1] double 0.00001 run scoreboard players get $Rotated-Pos-Y _
execute store result entity @s Pos[2] double 0.00001 run scoreboard players get $Rotated-Pos-Z _

##一時変数のリセット
function calc:rotate/reset