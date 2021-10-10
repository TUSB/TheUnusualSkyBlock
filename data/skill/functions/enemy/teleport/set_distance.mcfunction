#向きを設定
execute if data storage mob_data: Call.Direction run function skill:enemy/step/direction
#前方を探索
execute if data storage mob_data: Call.SpeedRange run function skill:enemy/step/range/speed
data modify storage calc: SearchForward set value {Stop:[Block],Align:1b}
data modify storage calc: SearchForward.Loop set from storage mob_data: Call.Speed
execute at @s run function calc:geometry/search_forward/
execute at 0-0-0-0-0 run tp @s ~ ~ ~
