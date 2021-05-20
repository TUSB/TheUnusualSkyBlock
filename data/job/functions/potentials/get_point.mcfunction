
###ポイント各種計算

#最高ポイント計算
scoreboard players operation _ AllExp = @s Level
scoreboard players remove _ AllExp 50

#割り振り済みポイント計算
scoreboard players operation _ Exp = _ AllExp
function job:potentials/get_current
scoreboard players operation _ Exp -= _ Calc
scoreboard players set _ _ 0
scoreboard players operation _ Exp > _ _
