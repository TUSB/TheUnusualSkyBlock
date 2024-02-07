## 定数生成
## _ sm.X : 四元数実軸(a) (1000倍)
## _ sm.Y : 四元数i軸(b) (1000倍)
## _ sm.Z : 四元数j軸(c) (1000倍)
## _ Calc : 四元数k軸(d) (1000倍)

## 00000000-0000-0000-0000-000000000002 Calc : a
scoreboard players operation 00000000-0000-0000-0000-000000000002 Calc = _ Calc
## 00000000-0000-0000-0000-000000000002 sm.X : b
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.X = _ sm.X
## 00000000-0000-0000-0000-000000000002 sm.Y : c
scoreboard players operation 00000000-0000-0000-0000-000000000002 sm.Y = _ sm.Y
## 00000000-0000-0000-0000-000000000002 _ : d
scoreboard players operation 00000000-0000-0000-0000-000000000002 _ = _ sm.Z

## _ Calc : a^2
scoreboard players operation _ Calc *= _ Calc
## _ sm.X : b^2
scoreboard players operation _ sm.X *= _ sm.X
## _ sm.Y : c^2
scoreboard players operation _ sm.Y *= _ sm.Y
## _ sm.Z : d^2
scoreboard players operation _ sm.Z *= _ sm.Z
