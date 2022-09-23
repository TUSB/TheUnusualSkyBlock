## 三角関数は1000倍で取得
scoreboard players set $Add _ 0

## - 1/2 sin(X-Y)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X-Y.[0] -500
scoreboard players operation $Pos-Y-Z _ += $Add _

## - 1/2 sin(X+Y)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.X+Y.[0] -500
scoreboard players operation $Pos-Y-Z _ += $Add _

