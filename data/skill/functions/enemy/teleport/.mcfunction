#Targetの位置にtpする
data modify storage mob_data: Target set from storage mob_data: Call.Target
execute as 0-0-0-0-1 run function enemy:ai/target/
execute if score 00000000-0000-0000-0000-000000000001 _ matches 1 at 0-0-0-0-1 run tp @s ~ ~1 ~ ~ ~
execute as 0-0-0-0-1 run function calc:geometry/return_marker
#Distance設定
data remove storage mob_data: Call.Target
execute if score 00000000-0000-0000-0000-000000000001 _ matches 1 if data storage mob_data: Call.Speed run function skill:enemy/teleport/set_distance
#元の向きに戻す
execute positioned as @s run tp @s ~ ~ ~ ~ ~
