## 三角関数は1000倍で取得
scoreboard players set $Add _ 0

## - 1/2 sin(Y+Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.Y+Z.[0] -500
scoreboard players operation $Pos-X-Y _ += $Add _

## + 1/2 sin(Y-Z)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.Y-Z.[0] 500
scoreboard players operation $Pos-X-Y _ += $Add _
