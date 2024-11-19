#> calc:rotate/quaternion/generate_const
## 定数生成
## __ sm.X : 四元数実軸(a) (1000倍)
## __ sm.Y : 四元数i軸(b) (1000倍)
## __ sm.Z : 四元数j軸(c) (1000倍)
## __ Calc : 四元数k軸(d) (1000倍)

## 00000000-0000-0000-0000-000000000002 Calc : a
scoreboard players operation 00000000-0000-0000-0000-000000000002 Calc = __ Calc
## 00000000-0000-0000-0000-000000000002 sm.X : b
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.X = __ sm.X
## 00000000-0000-0000-0000-000000000002 sm.Y : c
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Y = __ sm.Y
## 00000000-0000-0000-0000-000000000002 _ : d
scoreboard players operation 00000000-0000-0000-0000-000000000002 _ = __ sm.Z

## __ Calc : a^2
scoreboard players operation __ Calc *= __ Calc
## __ sm.X : b^2
scoreboard players operation __ sm.X *= __ sm.X
## __ sm.Y : c^2
scoreboard players operation __ sm.Y *= __ sm.Y
## __ sm.Z : d^2
scoreboard players operation __ sm.Z *= __ sm.Z
