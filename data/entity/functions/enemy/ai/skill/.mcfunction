#interval削減
execute store result storage mob_data: SkillCheck.Interval int 0.99999 store result storage mob_data: AI.Turn[0].Skill[0].Interval int 0.99999 run data get storage mob_data: AI.Turn[0].Skill[0].Interval
#Inverval=0のとき skill呼び出し
execute if data storage mob_data: SkillCheck{Interval:0} run function entity:enemy/ai/skill/call
