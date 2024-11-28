#Function
### CheckBlock処理

# 座標に0-0-0-0-2をTPさせて #block:no_collision かを判定する
# 失敗したら再帰処理開始

# 0-0-0-0-2召喚
    execute at @s run function calc:geometry/tp_00002
# 0-0-0-0-2に座標を入れる
    data modify entity 0-0-0-0-2 Pos set from storage calc: SpreadCalc
# Block判定
    scoreboard players set _ Calc 0
    execute at 0-0-0-0-2 unless block ~ ~ ~ #block:no_collision run scoreboard players add _ Calc 1
    execute as 0-0-0-0-2 run function calc:geometry/return_marker
# 失敗したら再帰処理
    execute store result score _ _ run data get storage mob_data: Call.SpreadLoop 1
    execute store result storage mob_data: Call.SpreadLoop int 1 run scoreboard players remove _ _ 1
    execute if score _ _ matches ..0 run data modify storage mob_data: Call.CheckBlock[0] set value 9999
    execute if score _ Calc matches 1 if score _ _ matches 1.. run function settings:enemy/global/event/function/spread/loop
