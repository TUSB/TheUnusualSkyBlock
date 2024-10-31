#> calc:rotate/quaternion/get_pos
## 0-0-0-0-1の現在座標を取得
data modify storage calc: Rotate.Quaternion.Pos set from entity @s Pos
execute store result score 00000000-0000-0000-0000-000000000001 sm.X run data get storage calc: Rotate.Quaternion.Pos[0] 1000
execute store result score 00000000-0000-0000-0000-000000000001 sm.Y run data get storage calc: Rotate.Quaternion.Pos[1] 1000
execute store result score 00000000-0000-0000-0000-000000000001 sm.Z run data get storage calc: Rotate.Quaternion.Pos[2] 1000

