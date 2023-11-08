## 三角関数は1000倍で取得
## [0]がSin [1]がCos
scoreboard players set $Add _ 0

## + 1/2 cos(X-Y)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X-Y.[1] 500
scoreboard players operation $Pos-Z-Z _ += $Add _

## + 1/2 cos(X+Y)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.X+Y.[1] 500
scoreboard players operation $Pos-Z-Z _ += $Add _
