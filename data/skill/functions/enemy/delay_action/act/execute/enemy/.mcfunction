#> skill:enemy/delay_action/act/execute/enemy/
#
# 敵固有DelayAction用分岐
#
# @within function skill:enemy/delay_action/append/

execute if data storage mob_data: Call{Tags:["CrimsonEye"]} run function skill:enemy/delay_action/act/execute/enemy/crimson_eye/