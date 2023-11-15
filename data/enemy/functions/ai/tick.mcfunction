function #oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

##Sleepgaで無効化範囲
execute unless entity @s[tag=SleepgaNoAI] run function enemy:ai/tick2

##CallOnTick
execute if entity @s[tag=CallOnTick] run function enemy:ai/call/trigger/tick

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI

#Target解除
execute as 0-0-0-0-2 run function calc:geometry/return_marker
