## calc: Rotate.FixedAxis に情報を入れてこのファンクションを実行する
## 入力されたベクトルを固定軸で回転させる
## 実行後に0-0-0-0-1の座標が回転後の単位ベクトルとして出力される
#> calc: Rotate.FixedAxis
#{
#  Angle[X,Y,Z] : 回転角度を固定角で指定
#  Vector[A,B] : 回転するベクトルをRotationで記述
#}

## X回転とY回転を行う
execute store result score _ Calc run data get storage calc: Rotate.FixedAxis.Vector[0] 1000000
execute store result score # Calc run data get storage calc: Rotate.FixedAxis.Angle[0] 1000000
execute store result storage calc: Rotate.FixedAxis.Vector[0] float 0.000001 run scoreboard players operation _ Calc += # Calc

execute store result score _ Calc run data get storage calc: Rotate.FixedAxis.Vector[1] 1000000
execute store result score # Calc run data get storage calc: Rotate.FixedAxis.Angle[1] 1000000
execute store result storage calc: Rotate.FixedAxis.Vector[1] float 0.000001 run scoreboard players operation _ Calc += # Calc

data modify entity 0-0-0-0-1 Rotation set from storage calc: Rotate.FixedAxis.Vector
execute as 0-0-0-0-1 in area:control_area positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^1.0 run function calc:geometry/tp_00001

## 0-0-0-0-1の座標取得
data modify storage calc: Rotate.FixedAxis.Pos set from entity 0-0-0-0-1 Pos
## 座標軸ずらし
data modify storage calc: Rotate.FixedAxis.Pos append from storage calc: Rotate.FixedAxis.Pos[0]
data remove storage calc: Rotate.FixedAxis.Pos[0]

## Rotationの取り直し
data modify entity 0-0-0-0-1 Pos set from storage calc: Rotate.FixedAxis.Pos
execute as 0-0-0-0-1 positioned 0.0 0.0 0.0 facing entity @s feet positioned as @s run teleport @s ~ ~ ~ ~ ~

## Z回転を行う
execute store result score _ Calc run data get entity 0-0-0-0-1 Rotation 1000000
execute store result score # Calc run data get storage calc: Rotate.FixedAxis.Angle[2] 1000000
execute store result entity 0-0-0-0-1 Rotation[1] float 0.000001 run scoreboard players operation _ Calc += # Calc
execute as 0-0-0-0-1 in area:control_area positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^1.0 run function calc:geometry/tp_00001
data modify storage calc: Rotate.FixedAxis.Pos set from entity 0-0-0-0-1 Pos

## 座標軸を戻す
data modify storage calc: Rotate.FixedAxis.Pos insert 0 from storage calc: Rotate.FixedAxis.Pos[-1]
data remove storage calc: Rotate.FixedAxis.Pos[-1]

## 0-0-0-0-1の座標に代入
data modify entity 0-0-0-0-1 Pos set from storage calc: Rotate.FixedAxis.Pos
