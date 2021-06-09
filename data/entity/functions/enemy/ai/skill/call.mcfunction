#Call
data modify storage mob_data: Call set from storage mob_data: AI.Turn[0].Skill[0].Call
function entity:enemy/ai/call/call
#Interval
execute store result storage mob_data: AI.Turn[0].Skill[0].Interval int 1 run function entity:enemy/ai/skill/set_interval
#Loop削減 0のときNext処理
execute store result storage mob_data: SkillCheck.LoopCount int 0.99999 store result storage mob_data: AI.Turn[0].Skill[0].LoopCount int 0.99999 run data get storage mob_data: AI.Turn[0].Skill[0].LoopCount
execute if data storage mob_data: SkillCheck{LoopCount:0} run function entity:enemy/ai/skill/skip
#TurnLoop削減 0のときexit処理
execute if data storage mob_data: AI.Turn[0].Exit.LoopCount store result storage mob_data: AI.Turn[0].Exit.LoopCount int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.LoopCount 1
execute if data storage mob_data: AI.Turn[0].Exit{LoopCount:0} run function entity:enemy/ai/exit/loop
