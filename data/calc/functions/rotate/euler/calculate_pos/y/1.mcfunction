## 三角関数は1000倍で取得
## [0]がSin [1]がCos
scoreboard players set $Add _ 0

## - 1/2 sin(Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.Y-Z.[0] -500
scoreboard players operation $Pos-Y-X _ += $Add _

## + 1/2 sin(Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.Y+Z.[0] 500
scoreboard players operation $Pos-Y-X _ += $Add _
