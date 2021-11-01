function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

##Passenger処理
execute if data storage mob_data: AI.Passenger run function enemy:ai/call/trigger/passenger/

##Target処理
# as 0-0-0-0-2
execute if data storage mob_data: AI.Turn[0].Target run data modify storage mob_data: Target set from storage mob_data: AI.Turn[0].Target
execute if data storage mob_data: AI.Turn[0].Target as 0-0-0-0-2 run function enemy:ai/target/
##Rotate処理
#facing entity 0-0-0-0-2 feet positioned ^ ^ ^0.003 rotated as @s positioned ^-0.004 ^ ^ if entity @s[distance=..0.005]
#で左側にTargetがいるか判定 functionの途中で切ってTarget呼び出し回数を1回にしている
execute if data storage mob_data: AI.Turn[0].Rotate facing entity 0-0-0-0-2 feet positioned ^ ^ ^0.003 rotated as @s run function enemy:ai/rotate/

##Move処理
execute if data storage mob_data: AI.Turn[0].Move rotated as @s run function enemy:ai/move/

##skill処理
execute if data storage mob_data: AI.Turn[0].Skill run function enemy:ai/skill/

##Turn exit確認
execute if data storage mob_data: AI.Turn[0].Exit run function enemy:ai/exit/

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI

#Target解除
execute as 0-0-0-0-2 run function calc:geometry/return_marker
