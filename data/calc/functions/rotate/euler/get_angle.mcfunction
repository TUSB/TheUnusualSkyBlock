## 必要な角度を全部計算する。
## 必要なもの
## Y
## X+Y X-Y
## X+Z X-Z
## Y+Z Y-Z
## X+Y+Z X-Y-Z
## X+Y-Z X-Y+Z

## X,Y,Zを取得
execute store result score $X _ run data get storage calc: Rotate.Angle[0]
execute store result score $Y _ run data get storage calc: Rotate.Angle[1]
execute store result score $Z _ run data get storage calc: Rotate.Angle[2]


## X+Yを取得
scoreboard players operation $X+Y _ = $X _
scoreboard players operation $X+Y _ += $Y _

## X-Yを取得
scoreboard players operation $X-Y _ = $X _
scoreboard players operation $X-Y _ -= $Y _

## X+Zを取得
scoreboard players operation $X+Z _ = $X _
scoreboard players operation $X+Z _ += $Z _

## X-Zを取得
scoreboard players operation $X-Z _ = $X _
scoreboard players operation $X-Z _ -= $Z _

## Y+Zを取得
scoreboard players operation $Y+Z _ = $Y _
scoreboard players operation $Y+Z _ += $Z _

## Y-Zを取得
scoreboard players operation $Y-Z _ = $Y _
scoreboard players operation $Y-Z _ -= $Z _

## X+Y+Zを取得
scoreboard players operation $X+Y+Z _ = $X _
scoreboard players operation $X+Y+Z _ += $Y _
scoreboard players operation $X+Y+Z _ += $Z _

## X-Y-Zを取得
scoreboard players operation $X-Y-Z _ = $X _
scoreboard players operation $X-Y-Z _ -= $Y _
scoreboard players operation $X-Y-Z _ -= $Z _

## X+Y-Zを取得
scoreboard players operation $X+Y-Z _ = $X _
scoreboard players operation $X+Y-Z _ += $Y _
scoreboard players operation $X+Y-Z _ -= $Z _

## X-Y+Zを取得
scoreboard players operation $X-Y+Z _ = $X _
scoreboard players operation $X-Y+Z _ -= $Y _
scoreboard players operation $X-Y+Z _ += $Z _
