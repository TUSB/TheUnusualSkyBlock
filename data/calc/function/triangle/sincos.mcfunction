#> calc:triangle/sincos
## calc: Triangle に情報を入れてこのファンクションを実行する
## 0-0-0-0-0を使用し、Sin(Rotation)とCos(Rotation)を出力する。
#> calc: Triangle
#{
#  Rotation : 角度を指定(Float)
#  SinCos[] : 結果の出力 [0]がSin [1]がCos
#}

## Initialize
function calc:triangle/initialize

function calc:triangle/tp

data modify storage calc: Triangle.SinCos append from entity 0-0-0-0-0 Pos[2]
data modify storage calc: Triangle.SinCos append from entity 0-0-0-0-0 Pos[0]

## Return
execute as 0-0-0-0-0 run function calc:geometry/return_marker
