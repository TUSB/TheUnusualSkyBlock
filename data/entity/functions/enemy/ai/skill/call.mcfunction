#Call
data modify storage mob_data: Call set from storage mob_data: AI.Turn[0].Skill[0].Call
function entity:enemy/ai/call/call
#Interval計算
execute store result score @s _ run function entity:enemy/ai/skill/set_interval
#Loop削減 0のときNext処理
execute store result storage mob_data: AI.Turn[0].Skill[0].Loop.Current int 0.99999 run data get storage mob_data: AI.Turn[0].Skill[0].Loop.Current
execute if data storage mob_data: AI.Turn[0].Skill[0].Loop{Current:0} run function entity:enemy/ai/skill/skip
#Interval適用
execute store result storage mob_data: AI.Turn[0].Skill[0].Interval.Current int 1 run scoreboard players get @s _
