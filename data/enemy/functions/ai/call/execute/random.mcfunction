#SkillListからランダムで1つ選ぶ 10個まで
execute store result score _ Calc run function calc:random
execute store result score _ _ if data storage mob_data: CallList[]
scoreboard players operation _ Calc %= _ _

execute if score _ Calc matches 0 run data modify storage mob_data: Call set from storage mob_data: CallList[0]
execute if score _ Calc matches 1 run data modify storage mob_data: Call set from storage mob_data: CallList[1]
execute if score _ Calc matches 2 run data modify storage mob_data: Call set from storage mob_data: CallList[2]
execute if score _ Calc matches 3 run data modify storage mob_data: Call set from storage mob_data: CallList[3]
execute if score _ Calc matches 4 run data modify storage mob_data: Call set from storage mob_data: CallList[4]
execute if score _ Calc matches 5 run data modify storage mob_data: Call set from storage mob_data: CallList[5]
execute if score _ Calc matches 6 run data modify storage mob_data: Call set from storage mob_data: CallList[6]
execute if score _ Calc matches 7 run data modify storage mob_data: Call set from storage mob_data: CallList[7]
execute if score _ Calc matches 8 run data modify storage mob_data: Call set from storage mob_data: CallList[8]
execute if score _ Calc matches 9 run data modify storage mob_data: Call set from storage mob_data: CallList[9]

function enemy:ai/call/execute/call
