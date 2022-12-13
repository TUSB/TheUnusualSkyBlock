#Function
### 絶対座標計算



# 実行座標を取り出してベクトル加算
    scoreboard players set _ MP 10
    execute store result score _ _ run data get storage calc: SpreadPos[0] 10000
    execute store result score _ Calc run data get storage calc: SpreadCalc[0] 10000
    scoreboard players operation _ _ += _ Calc
    execute if data storage mob_data: Call.OverFlow run scoreboard players operation _ _ *= _ MP
    execute store result storage calc: SpreadCalc[0] double 0.0001 run scoreboard players get _ _
    execute store result score _ _ run data get storage calc: SpreadPos[1] 10000
    execute store result score _ Calc run data get storage calc: SpreadCalc[1] 10000
    scoreboard players operation _ _ += _ Calc
    execute if data storage mob_data: Call.OverFlow run scoreboard players operation _ _ *= _ MP
    execute store result storage calc: SpreadCalc[1] double 0.0001 run scoreboard players get _ _
    execute store result score _ _ run data get storage calc: SpreadPos[2] 10000
    execute store result score _ Calc run data get storage calc: SpreadCalc[2] 10000
    scoreboard players operation _ _ += _ Calc
    execute if data storage mob_data: Call.OverFlow run scoreboard players operation _ _ *= _ MP
    execute store result storage calc: SpreadCalc[2] double 0.0001 run scoreboard players get _ _