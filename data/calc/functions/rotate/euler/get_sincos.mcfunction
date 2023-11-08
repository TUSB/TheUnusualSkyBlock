## 必要なsincosを全部取得する。
## 必要なもの
## Y
## X+Y X-Y
## X+Z X-Z
## Y+Z Y-Z
## X+Y+Z X-Y-Z
## X+Y-Z X-Y+Z


## Yのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $Y _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.Y set from storage calc: Triangle.SinCos

## X+Yのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X+Y _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X+Y set from storage calc: Triangle.SinCos

## X-Yのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X-Y _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X-Y set from storage calc: Triangle.SinCos

## X+Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X+Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X+Z set from storage calc: Triangle.SinCos

## X-Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X-Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X-Z set from storage calc: Triangle.SinCos

## Y+Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $Y+Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.Y+Z set from storage calc: Triangle.SinCos

## Y-Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $Y-Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.Y-Z set from storage calc: Triangle.SinCos

## X+Y+Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X+Y+Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X+Y+Z set from storage calc: Triangle.SinCos

## X-Y-Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X-Y-Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X-Y-Z set from storage calc: Triangle.SinCos

## X+Y-Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X+Y-Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X+Y-Z set from storage calc: Triangle.SinCos

## X-Y+Zのsincosを取得
execute store result storage calc: Triangle.Rotation float 1 run scoreboard players get $X-Y+Z _
function calc:triangle/sincos
data modify storage calc: Rotate.Euler.Triangle.X-Y+Z set from storage calc: Triangle.SinCos