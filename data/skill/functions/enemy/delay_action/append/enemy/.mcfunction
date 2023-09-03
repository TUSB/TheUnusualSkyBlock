#> skill:enemy/delay_action/append/enemy/
#
# 敵固有DelayAction用分岐
#
# @within function skill:enemy/delay_action/append/

execute if data storage mob_data: Call{Tags:["CrimsonEye"]} run function skill:enemy/delay_action/append/enemy/crimson_eye/
execute if data storage mob_data: Call{Tags:["LunaticEye"]} run function skill:enemy/delay_action/append/enemy/lunatic_eye/