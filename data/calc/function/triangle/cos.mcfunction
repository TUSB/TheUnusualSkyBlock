#> calc:triangle/cos
## calc: Triangle に情報を入れてこのファンクションを実行する
## 0-0-0-0-0を使用し、Cos(Rotation)を出力する。
#> calc: Triangle
#{
#  Rotation : 角度を指定(Float)
#  Cos : 結果の出力
#}

## Initialize
function calc:triangle/initialize

function calc:triangle/tp

data modify storage calc: Triangle.Cos set from entity 0-0-0-0-0 Pos[0]

## Return
execute as 0-0-0-0-0 run function calc:geometry/return_marker
return run data get storage calc: Triangle.Cos 10000
