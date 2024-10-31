#> calc:rotate/quaternion/act
#> calc: Rotate.Quaternion
#{
#  Axis[X,Y] : 回転軸を度数法で指定
#  Angle : 回転角を度数法で指定
#  AxisVector[X,Y,Z] : 回転軸ベクトル
#}
## 実行者 : 0-0-0-0-1

## Angleの半角のsincosを取得 (checked)
## __ _ : 半角のSin(1000倍)
## __ Calc : 半角のCos(1000倍)
function calc:rotate/quaternion/get_sincos

## Axisから単位ベクトルの生成 (checked)
## 下の一時変数に保存
## __ sm.X : 単位ベクトルのX成分(1000倍)
## __ sm.Y : 単位ベクトルのY成分(1000倍)
## __ sm.Z : 単位ベクトルのZ成分(1000倍)
execute as 0-0-0-0-0 run function calc:rotate/quaternion/get_angle_vector
## __ _ : 定数 1000

##Angle Axis形式から四元数形式に変換 (checked)
function calc:rotate/quaternion/convert

## __ sm.X : 四元数実軸(a) (1000倍)
## __ sm.Y : 四元数i軸(b) (1000倍)
## __ sm.Z : 四元数j軸(c) (1000倍)
## __ Calc : 四元数k軸(d) (1000倍)


## 0-0-0-0-1の現在座標取得 (fixed)
function calc:rotate/quaternion/get_pos
## 00000000-0000-0000-0000-000000000001 sm.X : 0-0-0-0-1のX座標(1000倍) (f)
## 00000000-0000-0000-0000-000000000001 sm.Y : 0-0-0-0-1のY座標(1000倍) (g)
## 00000000-0000-0000-0000-000000000001 sm.Z : 0-0-0-0-1のZ座標(1000倍) (h)

## 四元数形式から座標計算に必要な定数を生成 
function calc:rotate/quaternion/generate_const
## 全て(?倍)
## 00000000-0000-0000-0000-000000000002 Calc : a
## 00000000-0000-0000-0000-000000000002 sm.X : b
## 00000000-0000-0000-0000-000000000002 sm.Y : c
## 00000000-0000-0000-0000-000000000002 _ : d
## __ sm.X : a^2
## __ sm.Y : b^2
## __ sm.Z : c^2
## __ Calc : d^2

##回転後の座標を計算
## 00000000-0000-0000-0000-000000000002 sm.Z 計算の最終結果を保存するための一時変数

##X 
function calc:rotate/quaternion/calculate_pos/x
##代入
execute store result storage calc: Rotate.Quaternion.Pos[0] double 0.000000001 run scoreboard players get 00000000-0000-0000-0000-000000000002 sm.Z


##Y 
function calc:rotate/quaternion/calculate_pos/y
##代入
execute store result storage calc: Rotate.Quaternion.Pos[1] double 0.000000001 run scoreboard players get 00000000-0000-0000-0000-000000000002 sm.Z


##Z 
function calc:rotate/quaternion/calculate_pos/z
##代入
execute store result storage calc: Rotate.Quaternion.Pos[2] double 0.000000001 run scoreboard players get 00000000-0000-0000-0000-000000000002 sm.Z


data modify entity @s Pos set from storage calc: Rotate.Quaternion.Pos
