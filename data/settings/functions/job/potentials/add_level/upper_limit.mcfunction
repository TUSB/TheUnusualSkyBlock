
###他ジョブにレベルを振るときの最大値の初期設定
data modify storage tusb_player: Potentials.AddLevel set value [0,0,0,0,0,0,0,0,0]

data modify storage tusb_player: Potentials.AddLevel[1] set value 25
data modify storage tusb_player: Potentials.AddLevel[2] set value 25
data modify storage tusb_player: Potentials.AddLevel[3] set value 25
data modify storage tusb_player: Potentials.AddLevel[4] set value 25
data modify storage tusb_player: Potentials.AddLevel[5] set value 25
data modify storage tusb_player: Potentials.AddLevel[6] set value 25
data modify storage tusb_player: Potentials.AddLevel[7] set value 0
data modify storage tusb_player: Potentials.AddLevel[8] set value 0

#> $UpperLimitについて
#
# この値以上に他ジョブレベルアップさせることができなくなる
# クエストをクリアすると最大値が増える仕組みにするかも
#
