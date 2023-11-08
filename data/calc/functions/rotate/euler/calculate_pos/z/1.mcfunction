## 三角関数は1000倍で取得
## [0]がSin [1]がCos
scoreboard players set $Add _ 0

## - 1 sin(Y)
execute store result score $Add _ run data get storage calc: Rotate.Euler.Triangle.Y.[0] -1000
scoreboard players operation $Pos-Z-X _ += $Add _
