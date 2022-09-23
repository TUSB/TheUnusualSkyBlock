## calc: Rotate に情報を入れてこのファンクションを実行する
## 0-0-0-0-1をその座標から原点(0.0,0.0,0.0)を中心に回転させる。
## 0-0-0-0-1が0.0 0.0 0.0から30ブロック以内にいないと実行しない。
#> calc: Rotate
#{
#  Angle[X,Y,Z] : 回転角度をオイラー角で指定
#}

tag 0-0-0-0-1 add Marker


execute positioned 0.0 0.0 0.0 if entity @e[tag=Marker,distance=..30,limit=1] as 0-0-0-0-1 run function calc:rotate/act


tag 0-0-0-0-1 remove Marker
