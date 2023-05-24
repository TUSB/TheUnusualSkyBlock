## calc: Rotate に情報を入れてこのファンクションを実行する
## 0-0-0-0-1をその座標から原点(0.0,0.0,0.0)を中心に回転させる。
## 0-0-0-0-1が0.0 0.0 0.0から30ブロック以内にいないと実行しない。
#> calc: Rotate
#{
#  Angle[X,Y,Z] : 回転角度をオイラー角で指定
#}



execute as 0-0-0-0-1 in area:control_area positioned 0.0 0.0 0.0 if entity @s[distance=..30] run function calc:rotate/euler/act