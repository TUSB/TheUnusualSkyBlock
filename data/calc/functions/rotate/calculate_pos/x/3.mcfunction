## 三角関数は1000倍で取得
scoreboard players set $Add _ 0

## + sin(Y)
execute store result score $Add _ run data get storage calc: Rotate.Triangle.Y.[0] 1000
scoreboard players operation $Pos-X-Z _ += $Add _

