
###CP類の初期値を設定

# CP 2P 消費系
data modify storage tusb_player: Potentials.Default.SubLevel set value 0
data modify storage tusb_player: Potentials.Default.CritProbability set value 10

# CP 1P 消費系
data modify storage tusb_player: Potentials.Default.ResistMin set value 0
data modify storage tusb_player: Potentials.Default.AuraRate set value 100
data modify storage tusb_player: Potentials.Default.IntervalRate set value 100
data modify storage tusb_player: Potentials.Default.MPCostRate set value 100


#> 各パラメーターの説明
#
# SubLevel: サブレベルかつ他職業のレベルで習得しているスキルを選択できるようになる。
# CritProbability: クリティカルを発動する確率(%)
#
# ResistMin: 免疫発動の最小確率(%)
# AuraRate: オーラタイムの割合(%)
# IntervalRate: スキルインターバルの割合(%)
# MPCostRate: MP消費の割合(%)
#
