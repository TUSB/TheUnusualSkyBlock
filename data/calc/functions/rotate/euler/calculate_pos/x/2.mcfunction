## 三角関数は1000倍で取得
## [0]がSin [1]がCos
scoreboard players set $Add _ 0

## + 1/4 cos(X-Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X-Y-Z.[1] 250
scoreboard players operation $Pos-X-Y _ += $Add _

## - 1/4 cos(X+Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X+Y-Z.[1] -250
scoreboard players operation $Pos-X-Y _ += $Add _

## + 1/4 cos(X-Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X-Y+Z.[1] 250
scoreboard players operation $Pos-X-Y _ += $Add _

## - 1/4 cos(X+Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X+Y+Z.[1] -250
scoreboard players operation $Pos-X-Y _ += $Add _

## + 1/2 sin(X-Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X-Z.[0] 500
scoreboard players operation $Pos-X-Y _ += $Add _

## - 1/2 sin(X+Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X+Z.[0] -500
scoreboard players operation $Pos-X-Y _ += $Add _
