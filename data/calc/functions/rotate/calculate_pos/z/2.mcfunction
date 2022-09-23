## 三角関数は1000倍で取得
scoreboard players set $Add _ 0

## - 1/4 cos(X-Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X-Y-Z.[1] -250
scoreboard players operation $Pos-Z-Y _ += $Add _

## + 1/4 cos(X+Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X+Y-Z.[1] 250
scoreboard players operation $Pos-Z-Y _ += $Add _

## + 1/4 cos(X-Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X-Y+Z.[1] 250
scoreboard players operation $Pos-Z-Y _ += $Add _

## - 1/4 cos(X+Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X+Y+Z.[1] -250
scoreboard players operation $Pos-Z-Y _ += $Add _

## + 1/2 sin(X-Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X-Z.[0] 500
scoreboard players operation $Pos-Z-Y _ += $Add _

## + 1/2 sin(X+Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X+Z.[0] 500
scoreboard players operation $Pos-Z-Y _ += $Add _
