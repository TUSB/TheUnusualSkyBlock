##Passenger処理
execute if data storage mob_data: AI.Passenger run function enemy:ai/call/trigger/passenger/

##Target処理
execute if data storage mob_data: AI.Turn[0].Target run function enemy:ai/target/
##Rotate処理
#facing entity 0-0-0-0-2 feet positioned ^ ^ ^0.003 rotated as @s positioned ^-0.004 ^ ^ if entity @s[distance=..0.005]
#で左側にTargetがいるか判定 functionの途中で切ってTarget呼び出し回数を1回にしている
execute if data storage mob_data: AI.Turn[0].Rotate facing entity 0-0-0-0-2 feet positioned ^ ^ ^0.003 rotated as @s run function enemy:ai/rotate/

##Move処理
execute if data storage mob_data: AI.Turn[0].Move if score 00000000-0000-0000-0000-000000000002 _ matches 1 rotated as @s run function enemy:ai/move/

##skill処理
execute if data storage mob_data: AI.Turn[0].Skill run function enemy:ai/skill/

##Turn exit確認
execute if data storage mob_data: AI.Turn[0].Exit run function enemy:ai/exit/
