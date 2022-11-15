## 三角関数は1000倍で取得
## [0]がSin [1]がCos
scoreboard players set $Add _ 0

## - 1/4 sin(X-Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X-Y-Z.[0] -250
scoreboard players operation $Pos-Y-Y _ += $Add _

## + 1/4 sin(X+Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X+Y-Z.[0] 250
scoreboard players operation $Pos-Y-Y _ += $Add _

## + 1/4 sin(X-Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X-Y+Z.[0] 250
scoreboard players operation $Pos-Y-Y _ += $Add _

## - 1/4 sin(X+Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X+Y+Z.[0] -250
scoreboard players operation $Pos-Y-Y _ += $Add _

## + 1/2 cos(X-Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X-Z.[1] 500
scoreboard players operation $Pos-Y-Y _ += $Add _

## + 1/2 cos(X+Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X+Z.[1] 500
scoreboard players operation $Pos-Y-Y _ += $Add _
