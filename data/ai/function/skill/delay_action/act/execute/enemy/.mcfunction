#> skill:enemy/delay_action/act/execute/enemy/
#
# 敵固有DelayAction用分岐
#
# @within function skill:enemy/delay_action/append/

execute if data storage mob_data: ExecutingAction{Tags:["Common"]} run function skill:enemy/delay_action/act/execute/enemy/common/
execute if data storage mob_data: ExecutingAction{Tags:["CrimsonEye"]} run function skill:enemy/delay_action/act/execute/enemy/crimson_eye/
execute if data storage mob_data: ExecutingAction{Tags:["LunaticEye"]} run function skill:enemy/delay_action/act/execute/enemy/lunatic_eye/
execute if data storage mob_data: ExecutingAction{Tags:["AuroraEye"]} run function skill:enemy/delay_action/act/execute/enemy/aurora_eye/
execute if data storage mob_data: ExecutingAction{Tags:["Ryomen"]} run function skill:enemy/delay_action/act/execute/enemy/ryomen/
execute if data storage mob_data: ExecutingAction{Tags:["AbyssMage"]} run function skill:enemy/delay_action/act/execute/enemy/abyss_mage/