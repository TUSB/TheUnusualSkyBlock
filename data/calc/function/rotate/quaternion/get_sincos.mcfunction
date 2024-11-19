#> calc:rotate/quaternion/get_sincos
## Angleの半角のsincosを取得
## calc: Triangle.SinCosに保存
## [0]がSin [1]がCos
## __ _ : Sin
## __ Calc : Cos
execute store result storage calc: Triangle.Rotation float 0.0005 run data get storage calc: Rotate.Quaternion.Angle 1000
function calc:triangle/sincos
execute store result score __ _ run data get storage calc: Triangle.SinCos[0] 1000
execute store result score __ Calc run data get storage calc: Triangle.SinCos[1] 1000
