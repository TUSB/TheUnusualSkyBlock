#Function
### 計算処理（ループ）

# CheckBlock がオンの時のみループする可能性あり

# ランダム処理により半径を取得
    execute store result score _ Calc run data get storage mob_data: Call.MaxToMin 10000
    execute unless score _ Calc matches ..0 run function settings:enemy/global/event/function/spread/radius
    execute if score _ Calc matches ..0 run execute store result storage mob_data: Call.Radius double 0.0001 run scoreboard players get _ Calc
# ランダム処理により角度を取得
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 36000
    scoreboard players operation _ Random %= _ _
    scoreboard players remove _ Random 18000
    execute in area:control_area positioned 0.0 0.0 0.0 rotated 0.0 0.0 run function calc:geometry/tp_00002
    execute store result entity 0-0-0-0-2 Rotation[0] float 0.01 run scoreboard players get _ Random
    execute as 0-0-0-0-2 at @s run tp @s ^ ^ ^1
    data modify storage calc: SinCosPos set from entity 0-0-0-0-2 Pos
    data modify storage calc: RamdomSinCos append from storage calc: SinCosPos[0]
    data modify storage calc: RamdomSinCos append from storage calc: SinCosPos[2]
    data remove storage calc: SinCosPos
    execute as 0-0-0-0-2 run function calc:geometry/return_marker
# 半径と角度よりベクトルXを取得
    data modify storage mob_data: Call.Vec set value [0d,0d]
    execute store result score _ _ run data get storage calc: RamdomSinCos[1] 10000
    execute store result score _ Calc run data get storage mob_data: Call.Radius 10000
    execute store result storage mob_data: Call.Vec[0] double 0.0001 run scoreboard players operation _ _ *= _ Calc
# 半径と角度よりベクトルYを取得
    execute store result score _ _ run data get storage calc: RamdomSinCos[0] 10000
    execute store result score _ Calc run data get storage mob_data: Call.Radius 10000
    execute store result storage mob_data: Call.Vec[1] double 0.0001 run scoreboard players operation _ _ *= _ Calc
# 再帰処理の都合上リセット
    data remove storage calc: RamdomSinCos
# ベクトルX,Yより相対座標X,Y,Zを計算
    function settings:enemy/global/event/function/spread/loop_calc1
# 座標X,Y,Zを計算
    function settings:enemy/global/event/function/spread/loop_calc2
# CheckBlock判定
    execute if data storage mob_data: Call.CheckBlock run function settings:enemy/global/event/function/spread/checkblock
