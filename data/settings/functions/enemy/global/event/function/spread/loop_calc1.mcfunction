#Function
### 相対座標計算

    data modify storage calc: SpreadCalc set value [0d,0d,0d]
# 相対座標Y
    execute store result score _ _ run data get storage calc: PitchSinCos[1] 10000
    execute store result score _ Calc run data get storage mob_data: Call.Vec[1] 1
    execute store result storage calc: SpreadCalc[1] double 0.00000001 run scoreboard players operation _ _ *= _ Calc
# 相対座標Z'
    execute store result score _ _ run data get storage calc: PitchSinCos[0] -10000
    execute store result storage calc: SpreadCalc[2] double 0.00000001 run scoreboard players operation _ _ *= _ Calc
# 相対座標X
    execute store result score _ _ run data get storage calc: YawSinCos[1] 10000
    execute store result score _ Calc run data get storage mob_data: Call.Vec[0] 1
    scoreboard players operation _ _ *= _ Calc
    execute store result score _ Calc run data get storage calc: YawSinCos[0] 10000
    execute store result score _ MP run data get storage calc: SpreadCalc[2] 10000
    scoreboard players operation _ Calc *= _ MP
    execute store result storage calc: SpreadCalc[0] double 0.00000001 run scoreboard players operation _ _ += _ Calc
# 相対座標Z
    execute store result score _ Calc run data get storage calc: YawSinCos[1] 10000
    scoreboard players operation _ MP *= _ Calc
    execute store result score _ Calc run data get storage calc: YawSinCos[0] 10000
    execute store result score _ _ run data get storage mob_data: Call.Vec[0] 1
    scoreboard players operation _ _ *= _ Calc
    execute store result storage calc: SpreadCalc[2] double 0.00000001 run scoreboard players operation _ MP -= _ _
