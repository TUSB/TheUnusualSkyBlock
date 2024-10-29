#> calc:triangle/initialize
##初期化
data remove storage calc: Triangle.Sin
data remove storage calc: Triangle.Cos
data remove storage calc: Triangle.SinCos
data modify entity 0-0-0-0-0 Rotation[0] set from storage calc: Triangle.Rotation
data modify entity 0-0-0-0-0 Rotation[1] set value 0f
