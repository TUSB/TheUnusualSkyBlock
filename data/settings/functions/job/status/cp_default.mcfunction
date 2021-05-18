
###CP類の初期値を設定

# CP 2P 消費系
scoreboard players set $Default SubLevel 0
scoreboard players set $Default CritProbability 10

# CP 1P 消費系
scoreboard players set $Default ResistMin 0
scoreboard players set $Default AuraRate 100
scoreboard players set $Default IntervalRate 100
scoreboard players set $Default MPCostRate 100


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
# Add(Job): 他の(Job)のレベルを上げた値
# Add類は調整が大変なので初期値の変更はできない。
#
