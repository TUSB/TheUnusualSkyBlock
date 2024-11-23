#Function
### 実行方向を軸とし、実行座標を中心とした円状範囲内のランダムな座標に移動させます

# MaxSpeed : float
# MinSpeed : float
# CheckBlock : boolean
#
# CheckBlock はTP先が #block:no_collision になるまで再計算する機能です
# ただし6回再計算してもtp先が見つからない場合はtpを中断するので注意してください

# 実行座標と向きを習得
    function calc:geometry/tp_00002
    data modify storage calc: SpreadRotation set from entity 0-0-0-0-2 Rotation
    data modify storage calc: SpreadPos set from entity 0-0-0-0-2 Pos
    execute as 0-0-0-0-2 run function calc:geometry/return_marker
# MinSpeed  > MaxSpeed 時の対策
    execute store result score _ _ run data get storage mob_data: Call.MaxSpeed 10000
    scoreboard players set _ Calc 0
    execute if data storage mob_data: Call.MinSpeed store result score _ Calc run data get storage mob_data: Call.MinSpeed 10000
    execute if score _ Calc > _ _ run scoreboard players operation _ Calc = _ _
# オーバーフロー対策
    execute unless score _ _ matches -46340..46340 run function settings:enemy/global/event/function/spread/overflow
    execute store result storage mob_data: Call.MinSpeed float 0.0001 run scoreboard players get _ Calc
# MaxSpeed - MinSpeed の算出
    execute store result storage mob_data: Call.MaxToMin float 0.0001 run scoreboard players operation _ _ -= _ Calc
# Sin,Cosの習得
    function settings:enemy/global/event/function/spread/sincos
# ランダム処理の開始
    data modify storage mob_data: Call.SpreadLoop set value 6
    function settings:enemy/global/event/function/spread/loop
# 計算された座標を入れる（CheckBlock再計算に全失敗していた場合は移動しない）
    execute store result score _ _ run data get storage mob_data: Call.CheckBlock[0]
    execute unless score _ _ matches 9999 run data modify entity @s Pos set from storage calc: SpreadCalc
# リセット
    data remove storage calc: SpreadRotation
    data remove storage calc: SpreadPos
    data remove storage calc: SpreadCalc
    data remove storage calc: YawSinCos
    data remove storage calc: PitchSinCos
