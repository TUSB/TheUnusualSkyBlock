#> calc:rotate/quaternion/
## calc: Rotate.Quaternion に情報を入れてこのファンクションを実行する
## 0-0-0-0-1をその座標から原点(0.0,0.0,0.0)を中心に回転させる。
## 0-0-0-0-1が0.0 0.0 0.0から1ブロック以内にいないと実行しない。
#> calc: Rotate.Quaternion
#{
#  Axis[X,Y] : 回転軸を度数法で指定
#  Angle[Z] : 回転角を度数法で指定
#}

execute as 0-0-0-0-1 in area:control_area positioned 0.0 0.0 0.0 if entity @s[distance=..1] run function calc:rotate/quaternion/act
scoreboard players reset __
scoreboard players reset ##
