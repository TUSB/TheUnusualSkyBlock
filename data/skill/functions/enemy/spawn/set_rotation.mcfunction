data modify storage mob_data: Call set from storage mob_data: Call.Rotation
#向きを設定
function skill:enemy/step/direction
data modify entity @s Rotation set from entity 0-0-0-0-0 Rotation
